# codespaces-dotfiles

Bootstrap scripts for a Codespaces environment.

## What this repo does

- Installs Claude Code CLI via npm (`@anthropic-ai/claude-code`).
- Installs AWS CLI v2.

## Quick start

Run from the repo root:

```sh
sh install.sh
```

## Requirements

- `curl`
- `npm` (Node.js)
- `sudo` (for `apt-get` and AWS CLI install)

## Codespaces setup

This repo is not named `dotfiles`, so you must configure it manually:
1. Go to github.com/settings/codespaces
2. Under **Dotfiles**, select this repo.

GitHub will then run `install.sh` automatically when any new Codespace starts.
