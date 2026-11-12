# Dotfiles

Personal macOS configs. Each tool has its own folder; `README.md` has the install steps (symlinks or in-app imports) for every one.

- `Brewfile`: everything installed through Homebrew. Update it when the dotfiles start depending on a new tool.
- `zsh/`: `zshrc` sources `zsh_environment` and `zsh_aliases`.
- Never commit secrets. Tokens come from `gh auth token` or `~/.claude/secrets.json` at runtime.
- Claude Code config lives in the separate `ai-config` repo, not here.
