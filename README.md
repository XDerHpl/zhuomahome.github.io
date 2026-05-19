# zhuomahome.github.io

Academic homepage for Professor Zhuo Ma, built with Jekyll and GitHub Pages. The current homepage intentionally follows a minimal academic style inspired by `https://yangtonghome.github.io/`: white background, serif font, blue links, simple navigation, news, and publication lists.

> Note: the repository root keeps `index.html`, so the new homepage is visible even when GitHub Pages does not run a Jekyll build. The Jekyll version can still be maintained through `index.md` and `_config.yml`.

## How to publish at `https://zhuomahome.github.io/`

If the current URL is:

```text
https://xderhpl.github.io/zhuomahome.github.io
```

then the repository is currently a **Project Pages** site under the `xderhpl` account, not a **User Pages** site under the `zhuomahome` account or organization. GitHub Pages uses these rules:

- Repository `xderhpl/zhuomahome.github.io` publishes to `https://xderhpl.github.io/zhuomahome.github.io/`.
- Only repository `zhuomahome/zhuomahome.github.io` publishes to `https://zhuomahome.github.io/`.

### Recommended approach: move the repository under `zhuomahome`

1. Confirm that the GitHub username or organization `zhuomahome` exists.
2. Create a repository under `zhuomahome` with the exact name:

   ```text
   zhuomahome.github.io
   ```

3. Push the current code to that repository:

   ```bash
   git remote -v
   git remote set-url origin git@github.com:zhuomahome/zhuomahome.github.io.git
   git push -u origin main
   ```

   If your default branch is not `main`, replace `main` with the actual default branch name.

4. Open the new repository and go to **Settings -> Pages**.
5. Under **Build and deployment**, set:
   - Source: `Deploy from a branch`
   - Branch: `main`
   - Folder: `/(root)`
6. Save the settings, wait 1-10 minutes, and visit:

   ```text
   https://zhuomahome.github.io/
   ```

### Alternative: transfer the repository

If you do not want to create a new repository, use:

```text
Settings -> General -> Danger Zone -> Transfer ownership
```

Transfer the repository from `xderhpl` to `zhuomahome`. After the transfer, confirm that the repository name is still `zhuomahome.github.io`, and set GitHub Pages to `main` + `/(root)` under **Settings -> Pages**.

### Optional: use a custom domain

If you cannot use the `zhuomahome` account or organization, you can configure a custom domain in GitHub Pages. However, this will not change the default GitHub Pages URL to `https://zhuomahome.github.io/`; the default URL is determined by the repository owner.

## If the website does not change after merging

If the PR has been merged but `https://zhuomahome.github.io/` still shows the old page, the issue is usually the Pages publishing source, a failed deployment, or browser/CDN cache. Check the following:

1. Open the GitHub repository and go to **Settings -> Pages**.
2. Under **Build and deployment**, confirm the publishing source:
   - For branch deployment, choose **Deploy from a branch**, set Branch to `main` or the actual default branch, set Folder to `/(root)`, and click **Save**.
   - For GitHub Actions deployment, confirm that Pages Source is **GitHub Actions** and that the latest Pages workflow is green.
3. Open the repository **Actions** page and check the latest `pages-build-deployment` or Pages workflow:
   - If it is queued or in progress, wait a few minutes and refresh.
   - If it failed, open the log and inspect the error.
4. Confirm that the merged default branch contains the updated root `index.html`.
5. Wait 1-10 minutes, then force-refresh or use a private browser window:
   - macOS: `Cmd + Shift + R`
   - Windows/Linux: `Ctrl + F5`
   - You can also test cache busting with `https://zhuomahome.github.io/?v=2`.

## Local preview

### Static HTML preview

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\serve-static.ps1
```

Then open:

```text
http://127.0.0.1:8000/index.html
```

### Jekyll preview

Ruby 3.3 with MSYS2 DevKit is installed through `winget`, and project gems are locked in `Gemfile.lock`.

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\serve-jekyll.ps1
```

Then open:

```text
http://127.0.0.1:4000/
```

If you open a fresh terminal and `ruby` or `bundle` is not recognized yet, close and reopen the terminal, or temporarily run:

```powershell
$env:Path = "C:\Ruby33-x64\bin;$env:Path"
```

### Manual commands

```bash
bundle install
bundle exec jekyll serve
```

If Jekyll is not installed locally, preview the static homepage directly:

```bash
python3 -m http.server 8000
```

Then open `http://127.0.0.1:8000/`.

Most content can be maintained in `_config.yml`; page structure is in the root Markdown files, and styling is in `assets/css/style.css`.
