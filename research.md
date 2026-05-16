---
layout: default
title: 研究
permalink: /research/
---

# 研究方向

<div class="card markdown-card">

以下内容可作为研究方向页面模板。请将示例文字替换为真实研究简介、项目介绍与实验室成果。

{% for interest in site.research_interests %}
## {{ interest }}

- 研究问题：请描述该方向关注的核心科学问题或工程挑战。
- 代表成果：请列出相关论文、系统、数据集或开源项目。
- 合作机会：欢迎对该方向感兴趣的同学联系讨论。

{% endfor %}

</div>
