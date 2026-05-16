---
layout: default
title: Homepage
description: Academic homepage of Professor Zhuo Ma
---

# {{ site.profile.name }}

{{ site.profile.name }} is a {{ site.profile.title }}. Please replace this sentence with a short biography, including education background, previous positions, and current affiliation: {{ site.profile.affiliation }}.

Research Area: {% for interest in site.research_interests %}{{ interest }}{% unless forloop.last %}, {% endunless %}{% endfor %}.

{{ site.recruiting }}

Email: <a href="mailto:{{ site.profile.email }}">{{ site.profile.email }}</a>

## News:

{% for item in site.news %}
* {{ item.date }}: {{ item.text }}
{% endfor %}

## Research:

### Preprint Papers

* Author A, Author B, {{ site.profile.name }}. Sample Preprint Title: replace with a real paper title. arXiv preprint 2026. [Link](#)

### Papers in 2026

{% for paper in site.selected_publications %}
* {{ paper.authors }}. {{ paper.title }}. {{ paper.venue }}. {% for link in paper.links %}[{{ link.label }}]({{ link.url }}){% unless forloop.last %} | {% endunless %}{% endfor %}
{% endfor %}

### Selected Publications

{% for paper in site.selected_publications %}
* {{ paper.authors }}. {{ paper.title }}. {{ paper.venue }}. {% for link in paper.links %}[{{ link.label }}]({{ link.url }}){% unless forloop.last %} | {% endunless %}{% endfor %}
{% endfor %}
