---
layout: default
title: Home
description: Compact, research-grounded explanations of concepts in design, computation, and engineering.
permalink: /
---
<section class="topics-section" id="topics">
  <div class="shell">
    <h1 class="visually-hidden">What is? topic collection</h1>
    <div class="topic-search">
      <div class="search-field">
        <svg aria-hidden="true" viewBox="0 0 24 24" width="20" height="20">
          <circle cx="11" cy="11" r="6.5"></circle>
          <path d="m16 16 4 4"></path>
        </svg>
        <label class="visually-hidden" for="topic-search">Search topics</label>
        <input id="topic-search" type="search" placeholder="Search topics" autocomplete="off" spellcheck="false">
      </div>
      <p id="topic-search-status" class="search-status" aria-live="polite">{{ site.topics | size }} topics</p>
    </div>

    <div class="topic-cards">
      {% assign ordered_topics = site.topics | sort: "order" %}
      {% for topic in ordered_topics %}
        {% capture search_text %}{{ topic.title }} {{ topic.description }} {{ topic.one_sentence }}{% endcapture %}
        <a class="topic-card" href="{{ topic.url | relative_url }}" data-topic-search="{{ search_text | downcase | strip | escape }}">
          <span>
            <h2>{{ topic.title }}</h2>
            <p>{{ topic.description }}</p>
          </span>
          <span class="card-arrow">Read the guide <span aria-hidden="true">→</span></span>
        </a>
      {% endfor %}
    </div>
    <p class="search-empty" hidden>No topics match that search.</p>
  </div>
</section>
<script src="{{ '/assets/js/topic-search.js' | relative_url }}" defer></script>
