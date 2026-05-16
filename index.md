---
layout: default
title: Homepage
description: Academic homepage of Professor Zhuo Ma
---

<section class="profile-block">
  <div class="portrait-placeholder" aria-label="Faculty portrait placeholder">
    <span>Faculty<br>Portrait</span>
  </div>

# {{ site.profile.name }}

<strong>{{ site.profile.name }}</strong> is a {{ site.profile.title }}. Please replace this sentence with a short biography, including education background, previous positions, and current affiliation: {{ site.profile.affiliation }}.

<strong>Research Area:</strong> {% for interest in site.research_interests %}{{ interest }}{% unless forloop.last %}, {% endunless %}{% endfor %}.

<strong>Recruiting:</strong> {{ site.recruiting }}

<strong>Email:</strong> <a href="mailto:{{ site.profile.email }}">{{ site.profile.email }}</a>

</section>

## News:

{% for item in site.news %}
* <strong>{{ item.date }}:</strong> {{ item.text }}
{% endfor %}

## Research:

### Preprint Papers

* Author A, Author B, <strong>{{ site.profile.name }}</strong>. Sample Preprint Title: replace with a real paper title. <strong>arXiv preprint 2026.</strong> [Link](#)

### Papers in 2026

{% for paper in site.selected_publications %}
* {{ paper.authors }}. {{ paper.title }}. <strong>{{ paper.venue }}.</strong> {% for link in paper.links %}[{{ link.label }}]({{ link.url }}){% unless forloop.last %} | {% endunless %}{% endfor %}
{% endfor %}

### Selected Publications

{% for paper in site.selected_publications %}
* {{ paper.authors }}. {{ paper.title }}. <strong>{{ paper.venue }}.</strong> {% for link in paper.links %}[{{ link.label }}]({{ link.url }}){% unless forloop.last %} | {% endunless %}{% endfor %}
{% endfor %}
