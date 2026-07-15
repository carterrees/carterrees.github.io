# Carter Blog

**Updated:** 2026-07-14
**Stack:** Hugo extended + Blowfish + GitHub Pages

---

## What this is

<!-- BEGIN:human:what-this-is -->
A personal GitHub Pages blog built with Hugo and the Blowfish theme, where articles are plain Markdown files published at `https://carterrees.github.io`.
<!-- END:human:what-this-is -->

## Current focus

<!-- BEGIN:human:current-focus -->
Convert this starter repository into a clean Hugo/Blowfish blog structure with minimal configuration, a Markdown post workflow, and GitHub Actions deployment.
<!-- END:human:current-focus -->

## Non-goals

<!-- BEGIN:human:non-goals -->
No Node.js or Go module workflow is required for the blog setup; keep the writing workflow focused on Markdown content and Hugo configuration.
<!-- END:human:non-goals -->

## Quick Reference

| Command | What |
|---------|------|
| `make serve` | Run local Hugo preview with drafts |
| `make build` | Build the production static site |
| `make new-post POST_SLUG=my-post-title` | Create a dated Markdown post |
| `make update-theme` | Update the Blowfish submodule |

## Blog structure

- `config/_default/` - Hugo and Blowfish configuration
- `content/posts/` - Markdown blog posts
- `content/archives/_index.md` - Archive page
- `archetypes/` - Templates used by `hugo new`
- `.github/workflows/hugo.yml` - GitHub Pages deployment workflow
- `themes/blowfish/` - Blowfish theme Git submodule

## Recent meaningful changes

<!-- BEGIN:human:recent-changes -->
2026-07-14: Converted the starter Python scaffold into a minimal Hugo/Blowfish blog with Markdown posts and GitHub Actions deployment.
<!-- END:human:recent-changes -->

## Glossary

<!-- BEGIN:human:glossary -->
- Blowfish: Hugo theme installed as a Git submodule in `themes/blowfish/`.
- GitHub Pages: Static hosting target for `https://carterrees.github.io`.
<!-- END:human:glossary -->

## Open questions

<!-- BEGIN:human:open-questions -->
- Confirm the GitHub username/repository should be `carterrees/carterrees.github.io`.
- Replace the starter post with real content when ready.
<!-- END:human:open-questions -->

---
