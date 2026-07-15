# AGENTS.md

Single source of truth for AI coding agents working on this Hugo/Blowfish GitHub Pages blog.

## Start here

- Current state and focus: `docs/PROJECT_CONTEXT.md`
- Public-facing overview: `README.md`
- Hugo configuration: `config/_default/`
- Content: `content/posts/`

## Development environment

Use Hugo extended `0.158.0` or newer; the GitHub Actions workflow is pinned to `0.163.3` because that is the latest version declared compatible by the current Blowfish submodule. Do not use `.venv` or Python project tooling for this blog.

## Commands

- `make serve` - run `hugo server -D` for local preview with drafts
- `make build` - run a production Hugo build into `public/`
- `make new-post POST_SLUG=my-post-title` - create a dated Markdown post
- `make update-theme` - update the Blowfish Git submodule
- `make clean` - remove local Hugo build output

## Working style

- Keep the blog minimal and Markdown-first.
- Prefer small, surgical diffs tied to the user request.
- Do not introduce Node.js, npm, Hugo Modules, or custom build systems unless explicitly requested.
- Do not commit generated build output from `public/` or `resources/`.
- Never hardcode API keys, tokens, or credentials in source files.

## Project overview requests

When asked about the project, prefer:

1. `docs/PROJECT_CONTEXT.md`
2. `README.md`
3. Hugo config files under `config/_default/`

## Excluded directories

When scanning, documenting, summarizing, or reviewing this project, skip these directories entirely unless explicitly asked:

`.claude/`, `.gemini/`, `.opencode/`, `.codex/`, `.sarissa/`, `_bmad/`, `.agents/`, `.github/`, `.vscode/`, `.idea/`, `node_modules/`, `.venv/`, `__pycache__/`, `.conda/`, `public/`, `resources/`
