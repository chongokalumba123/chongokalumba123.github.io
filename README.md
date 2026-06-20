# Publish this site to GitHub Pages (quick guide)

This folder contains a simple portfolio site in `index.html`. Follow these steps once to publish it to GitHub Pages, then use the quick script below to update.

1. Install Git (Windows)
   - Download and run the installer: https://git-scm.com/download/win (default options are fine).
   - Verify in Command Prompt:

```
git --version
```

2. Configure your identity (one-time):

```
git config --global user.name "Your Name"
git config --global user.email "you@example.com"
```

3. Create a GitHub repository named exactly `chongokalumba123.github.io` (replace `chongokalumba123` with your GitHub username if different). Leave it empty (no README).

4. From this folder, run the batch script `publish_site.bat` and follow prompts. It will run the git commands needed to push to the repository.

Updating later

Inside this folder after making changes:

```
git add <that-file>
git commit -m "Update site"
git push
```

If you prefer manual steps, see the commands inside `publish_site.bat`.

# chongokalumba123.github.io
Portfolio
