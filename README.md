# zhuomahome.github.io

马卓教授的个人主页，基于 Jekyll 与 GitHub Pages 构建。

> 注意：仓库根目录保留了 `index.html`，因此即使 GitHub Pages 没有触发 Jekyll 构建，首页也会立即显示新版教师主页；Jekyll 版本的内容仍可通过 `index.md` 和 `_config.yml` 维护。

## Merge 后网站没有变化时怎么操作

如果 PR 已经 merge，但是 `https://zhuomahome.github.io/` 仍然显示旧页面，通常不是代码没改，而是 GitHub Pages 还没有发布到正确来源、发布任务失败，或浏览器/CDN 缓存仍在显示旧版本。请按下面顺序检查：

1. 打开 GitHub 仓库 `zhuomahome.github.io`，进入 **Settings → Pages**。
2. 在 **Build and deployment** 中确认发布来源：
   - 如果使用分支发布：选择 **Deploy from a branch**，Branch 选择 `main`（或实际默认分支），Folder 选择 `/(root)`，然后点击 **Save**。
   - 如果使用 GitHub Actions 发布：确认 Pages Source 选择 **GitHub Actions**，并且 Actions 页面中最新的 Pages workflow 是绿色成功状态。
3. 打开仓库 **Actions** 页面，查看最新的 `pages-build-deployment` 或 Pages workflow：
   - 如果是黄色/排队中：等待几分钟后刷新。
   - 如果是红色失败：点进去看错误日志，通常是 Pages source、权限、Jekyll 构建或 Actions 被禁用导致。
4. 确认合并后的默认分支根目录能看到新版 `index.html`。这个文件是当前站点最直接的入口。
5. 等待 1–10 分钟后，用无痕窗口或强制刷新访问：
   - macOS：`Cmd + Shift + R`
   - Windows/Linux：`Ctrl + F5`
   - 也可以在网址后临时加查询参数验证缓存：`https://zhuomahome.github.io/?v=2`

### 最常见原因

- **Pages 发布源不是合并 PR 的分支**：例如 Pages 还指向 `gh-pages` 或 `/docs`，而 PR 合并到了 `main` 根目录。
- **Actions 被禁用或 Pages workflow 失败**：GitHub Pages 的 Jekyll 构建依赖 GitHub 的 Pages 构建流程。
- **浏览器缓存**：GitHub Pages/CDN 或浏览器可能短时间继续显示旧页面。
- **访问了错误 URL**：应访问 `https://zhuomahome.github.io/`，不要访问 PR 预览地址或旧自定义域名。

## 本地预览

```bash
bundle install
bundle exec jekyll serve
```

如果本地没有安装 Jekyll，也可以直接预览静态首页：

```bash
python3 -m http.server 8000
```

然后打开 `http://127.0.0.1:8000/`。

主要内容可在 `_config.yml` 中集中维护；页面结构位于根目录的 Markdown 文件，样式位于 `assets/css/style.css`。
