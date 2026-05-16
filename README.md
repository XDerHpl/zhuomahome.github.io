# zhuomahome.github.io

马卓教授的个人主页，基于 Jekyll 与 GitHub Pages 构建。


> 注意：仓库根目录保留了 `index.html`，因此即使 GitHub Pages 没有触发 Jekyll 构建，首页也会立即显示新版教师主页；Jekyll 版本的内容仍可通过 `index.md` 和 `_config.yml` 维护。

## 本地预览

```bash
bundle install
bundle exec jekyll serve
```

主要内容可在 `_config.yml` 中集中维护；页面结构位于根目录的 Markdown 文件，样式位于 `assets/css/style.css`。
