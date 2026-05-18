---
layout: default
title: Publications
permalink: /publications/
---

# Publications

## Selected Publications

{% for paper in site.selected_publications %}
* {{ paper.authors }}. {{ paper.title }}. {{ paper.venue }}. {% for link in paper.links %}[{{ link.label }}]({{ link.url }}){% unless forloop.last %} | {% endunless %}{% endfor %}
{% endfor %}

## Publication List Maintenance Notes

- Group papers by year, for example `Papers in 2026` and `Papers in 2025`.
- Provide PDF, code, project page, slides, or demo links when available.
- Keep representative papers in `_config.yml` under `selected_publications`, or move the full list to `_data/publications.yml` later.
