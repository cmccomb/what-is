---
layout: default
title: Home
description: Compact, research-grounded explanations of concepts in design, computation, and engineering.
permalink: /
---
<section class="home-hero">
  <div class="shell hero-copy">
    <p class="eyebrow">A research field guide</p>
    <h1>Start with a <em>shared definition.</em></h1>
    <p class="lede">Short, rigorous introductions to the concepts that recur in design research, computation, and engineering—written to support a meeting today and deeper study tomorrow.</p>
  </div>
</section>
<section class="topics-section" id="topics">
  <div class="shell">
    <header class="section-heading">
      <h2>Explore the collection</h2>
      <p>Each guide gives you a working definition, the underlying mechanism, appropriate uses, common mistakes, core literature, and a path for learning more.</p>
    </header>

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

<section class="principles" aria-labelledby="principles-title">
  <div class="shell principles-grid">
    <h2 id="principles-title">Built for useful conversations</h2>
    <div>
      <span class="principle-number">01</span>
      <h3>Precise, not exhaustive</h3>
      <p>Enough structure to use the term carefully without turning a quick reference into a textbook.</p>
    </div>
    <div>
      <span class="principle-number">02</span>
      <h3>Grounded in literature</h3>
      <p>Foundational sources are separated from tutorials, software, and other practical resources.</p>
    </div>
    <div>
      <span class="principle-number">03</span>
      <h3>Honest about limits</h3>
      <p>Every method becomes easier to misuse when its assumptions and failure modes remain implicit.</p>
    </div>
  </div>
</section>
