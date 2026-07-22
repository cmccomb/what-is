#!/usr/bin/env ruby
# frozen_string_literal: true

require "date"
require "pathname"
require "yaml"

ROOT = Pathname.new(__dir__).join("..").expand_path
SITE = ROOT.join("_site")
TOPICS = ROOT.join("_topics")
REQUIRED_FIELDS = %w[title slug description one_sentence order read_time updated detail_title].freeze

errors = []
topic_files = TOPICS.glob("*.md").sort
errors << "expected at least one topic" if topic_files.empty?

slugs = []
orders = []

topic_files.each do |path|
  text = path.read
  parts = text.split(/^---\s*$\n/, 3)
  front_matter = parts[1]
  unless front_matter
    errors << "#{path.basename}: missing YAML front matter"
    next
  end

  data = YAML.safe_load(front_matter, permitted_classes: [Date], aliases: false)
  REQUIRED_FIELDS.each do |field|
    errors << "#{path.basename}: missing #{field}" if data[field].nil? || data[field].to_s.strip.empty?
  end

  slug = data["slug"]
  slugs << slug
  orders << data["order"]
  errors << "#{path.basename}: filename and slug differ" unless path.basename(".md").to_s == slug

  body = parts[2].to_s
  headings = body.scan(/^## (.+?)\s*$/).flatten
  errors << "#{path.basename}: expected exactly three level-two headings" unless headings.length == 3
  errors << "#{path.basename}: first level-two heading must be 'Definition'" unless headings.first == "Definition"
  errors << "#{path.basename}: detail heading must match detail_title" unless headings[1] == data["detail_title"]
  errors << "#{path.basename}: final level-two heading must be 'Resources'" unless headings.last == "Resources"

  resources = body.split(/^## Resources\s*$/, 2)[1].to_s
  errors << "#{path.basename}: Resources should recommend at least three links" if resources.scan(/https?:\/\//).length < 3
end
errors << "topic slugs are not unique" unless slugs.uniq.length == slugs.length
errors << "topic order values are not unique" unless orders.uniq.length == orders.length

unless SITE.directory?
  errors << "_site is missing; run Jekyll before this check"
else
  expected_pages = [SITE.join("index.html"), SITE.join("404.html")]
  expected_pages.concat(slugs.map { |slug| SITE.join(slug, "index.html") })
  expected_pages.each { |path| errors << "missing built page: #{path.relative_path_from(ROOT)}" unless path.file? }

  SITE.glob("**/*.html").each do |html_path|
    html = html_path.read
    html.scan(/href="([^"]+)"/).flatten.each do |href|
      next if href.empty? || href.start_with?("#", "http://", "https://", "mailto:")

      clean = href.split(/[?#]/, 2).first.sub(%r{^/what-is}, "")
      candidate = if clean.end_with?("/")
                    SITE.join(clean.sub(%r{^/}, ""), "index.html")
                  else
                    SITE.join(clean.sub(%r{^/}, ""))
                  end
      errors << "#{html_path.relative_path_from(ROOT)}: broken internal link #{href}" unless candidate.exist?
    end
  end
end

if errors.empty?
  puts "Site checks passed for #{topic_files.length} topics."
else
  warn errors.join("\n")
  exit 1
end
