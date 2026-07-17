#!/usr/bin/env ruby
# frozen_string_literal: true

require "date"
require "pathname"
require "yaml"

ROOT = Pathname.new(__dir__).join("..").expand_path
SITE = ROOT.join("_site")
TOPICS = ROOT.join("_topics")
REQUIRED_FIELDS = %w[title slug description one_sentence category order read_time updated].freeze
REQUIRED_HEADINGS = [
  "## Working definition",
  "## How it works",
  "## When it is useful",
  "## Common mistakes",
  "## Core literature",
  "## Further reading and resources"
].freeze

errors = []
topic_files = TOPICS.glob("*.md").sort
errors << "expected at least one topic" if topic_files.empty?

slugs = []
orders = []

topic_files.each do |path|
  text = path.read
  front_matter = text.split(/^---\s*$\n/, 3)[1]
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
  REQUIRED_HEADINGS.each do |heading|
    errors << "#{path.basename}: missing '#{heading}'" unless text.include?(heading)
  end
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
