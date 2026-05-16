---
layout: default
title: 论文
permalink: /publications/
---

# 论文发表

<section class="card">
  <h2>Selected Publications</h2>
  <ol class="publication-list">
    {% for paper in site.selected_publications %}
    <li>
      <h3>{{ paper.title }}</h3>
      <p>{{ paper.authors }}</p>
      <em>{{ paper.venue }}</em>
      <span class="paper-links">
        {% for link in paper.links %}
        <a href="{{ link.url }}">[{{ link.label }}]</a>
        {% endfor %}
      </span>
    </li>
    {% endfor %}
  </ol>
</section>

<section class="card markdown-card">

## 论文列表维护建议

- 可按年份分组，例如 `Papers in 2026`、`Papers in 2025`。
- 推荐为每篇论文提供 PDF、代码、项目主页或演示链接。
- 可在 `_config.yml` 的 `selected_publications` 中维护代表作，或后续扩展为 `_data/publications.yml`。

</section>
