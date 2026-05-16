# zhuomahome.github.io

马卓教授的个人主页，基于 Jekyll 与 GitHub Pages 构建。当前首页特意改成了接近 `https://yangtonghome.github.io/` 的极简学术主页风格：白底、默认 serif 字体、蓝色链接、简单导航、新闻和论文列表。

> 注意：仓库根目录保留了 `index.html`，因此即使 GitHub Pages 没有触发 Jekyll 构建，首页也会立即显示新版教师主页；Jekyll 版本的内容仍可通过 `index.md` 和 `_config.yml` 维护。

## 如何把部署地址改成 `https://zhuomahome.github.io/`

如果你现在看到的地址是：

```text
https://xderhpl.github.io/zhuomahome.github.io
```

说明这个仓库目前是 **xderhpl 账号下的项目站点（Project Pages）**，而不是 **zhuomahome 账号/组织下的用户站点（User Pages）**。GitHub Pages 的规则是：

- 仓库 `xderhpl/zhuomahome.github.io` 会发布到 `https://xderhpl.github.io/zhuomahome.github.io/`。
- 只有仓库 `zhuomahome/zhuomahome.github.io` 才会发布到 `https://zhuomahome.github.io/`。

### 推荐操作：把仓库放到 `zhuomahome` 账号/组织下面

1. 确认 GitHub 上存在用户名或组织名 `zhuomahome`。
2. 在 `zhuomahome` 账号/组织下创建一个仓库，仓库名必须精确为：

   ```text
   zhuomahome.github.io
   ```

3. 把当前代码推送到这个新仓库：

   ```bash
   git remote -v
   git remote set-url origin git@github.com:zhuomahome/zhuomahome.github.io.git
   git push -u origin main
   ```

   如果默认分支不是 `main`，把命令里的 `main` 替换成你的默认分支名。

4. 打开新仓库的 **Settings → Pages**。
5. 在 **Build and deployment** 里设置：
   - Source: `Deploy from a branch`
   - Branch: `main`
   - Folder: `/(root)`
6. 保存后等待 1–10 分钟，访问：

   ```text
   https://zhuomahome.github.io/
   ```

### 也可以选择转移仓库

如果你不想新建仓库，也可以在当前仓库执行：

```text
Settings → General → Danger Zone → Transfer ownership
```

把仓库从 `xderhpl` 转移到 `zhuomahome`。转移后仍需确认仓库名是 `zhuomahome.github.io`，并在 **Settings → Pages** 中选择 `main` + `/(root)`。

### 不推荐但可选：用自定义域名

如果无法使用 `zhuomahome` 账号/组织，也可以购买/配置自定义域名，然后在 GitHub Pages 的 Custom domain 中绑定。但这不会把 GitHub 默认地址变成 `https://zhuomahome.github.io/`；默认地址仍由仓库所属账号决定。

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
