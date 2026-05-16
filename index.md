---
layout: default
title: 主页
description: 马卓教授的个人主页
---

<section class="hero">
  <div class="hero-content">
    <p class="eyebrow">Academic Homepage</p>
    <h1>{{ site.profile.name }} <span>{{ site.profile.name_en }}</span></h1>
    <p class="lead">{{ site.profile.title }}，{{ site.profile.affiliation }}</p>
    <p class="hero-text">
      这里是{{ site.profile.name }}的教师个人主页。页面采用简洁学术风格，便于展示个人简介、研究方向、最新动态、代表性论文、课程教学与招生信息。
    </p>
    <div class="hero-actions">
      <a class="button primary" href="{{ '/publications/' | relative_url }}">查看论文</a>
      <a class="button" href="mailto:{{ site.profile.email }}">邮件联系</a>
    </div>
  </div>
  <aside class="profile-card" aria-label="个人信息卡片">
    <div class="avatar">{{ site.profile.name | slice: 0, 1 }}</div>
    <h2>{{ site.profile.name }}</h2>
    <p>{{ site.profile.title }}</p>
    <ul>
      <li><strong>单位</strong><span>{{ site.profile.affiliation }}</span></li>
      <li><strong>邮箱</strong><span><a href="mailto:{{ site.profile.email }}">{{ site.profile.email }}</a></span></li>
      <li><strong>办公室</strong><span>{{ site.profile.office }}</span></li>
    </ul>
  </aside>
</section>

<section class="notice">
  <strong>招生信息</strong>
  <p>{{ site.recruiting }}</p>
</section>

<section class="grid two-columns">
  <div class="card">
    <h2>News</h2>
    <ul class="timeline">
      {% for item in site.news %}
      <li>
        <time>{{ item.date }}</time>
        <span>{{ item.text }}</span>
      </li>
      {% endfor %}
    </ul>
  </div>

  <div class="card">
    <h2>Research Interests</h2>
    <ul class="tag-list">
      {% for interest in site.research_interests %}
      <li>{{ interest }}</li>
      {% endfor %}
    </ul>
  </div>
</section>

<section class="card">
  <div class="section-heading">
    <h2>Selected Publications</h2>
    <a href="{{ '/publications/' | relative_url }}">全部论文 →</a>
  </div>
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
