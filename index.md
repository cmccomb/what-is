---
layout: default
title: Home
description: Compact, research-grounded explanations of concepts in design, computation, and engineering.
permalink: /
---
<section class="topics-section" id="topics">
  <div class="shell">
    <div class="topic-cards">
      {% assign ordered_topics = site.topics | sort: "order" %}
      {% for topic in ordered_topics %}
        <a class="topic-card" href="{{ topic.url | relative_url }}">
          <span class="card-category">{{ topic.category }}</span>
          <span>
            <h3>{{ topic.title }}</h3>
            <p>{{ topic.description }}</p>
          </span>
          <span class="card-arrow">Read the guide <span aria-hidden="true">→</span></span>
        </a>
      {% endfor %}
    </div>
  </div>
</section>
