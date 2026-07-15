# Carter's Blog

A minimal personal blog powered by [Hugo](https://gohugo.io/) and the [Blowfish](https://blowfish.page/) theme, deployed to GitHub Pages.

## Requirements

- Hugo extended `0.158.0` or newer; this repo is tested with `0.163.3`
- Git

No Node.js or Go toolchain is required for this setup.

## Local preview

```bash
make serve
```

Then open `http://localhost:1313`. The preview includes draft posts.

## Write a post

```bash
make new-post POST_SLUG=my-post-title
```

Posts are Markdown files in `content/posts/` using this shape:

```markdown
---
title: "The Title of the Post"
date: 2026-07-14
draft: false
tags: ["tag-one", "tag-two"]
summary: "One or two sentences shown on the post list and in previews."
---

Body of the article in Markdown starts here.
```

## Build

```bash
make build
```

The generated site is written to `public/`, which is intentionally ignored by Git.

## Deploy

This repo includes `.github/workflows/hugo.yml`, which builds and deploys the site through GitHub Actions.

1. Create a public GitHub repository named `carterrees.github.io`.
2. Push this repository to `main`.
3. In GitHub, go to `Settings > Pages` and set Source to `GitHub Actions`.

The site will publish to `https://carterrees.github.io/`.

If the GitHub username should be different, update `baseURL` in `config/_default/config.toml`, the repository name above, and the GitHub profile link in `config/_default/languages.en.toml`.

## Theme updates

```bash
make update-theme
```
