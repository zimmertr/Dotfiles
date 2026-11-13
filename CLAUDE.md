# Dotfiles

Personal configs for macOS and Linux. Each tool has its own folder; `README.md` has the install steps (symlinks or in-app imports) for every one.

- `Brewfile`: everything installed through Homebrew, macOS only. Update it when the dotfiles start depending on a new tool. Linux gets separate package lists (apt or similar), never brew.
- `zsh/`: `zshenv` stops Ubuntu's global compinit. `zshrc` sources `zsh_environment`, `zsh_aliases` (one-line aliases) and `zsh_functions` (shell functions).
- Never commit secrets. Tokens come from `gh auth token` or `~/.claude/secrets.json` at runtime.
- Claude Code config lives in the separate `ai-config` repo, not here.
- CI: yggdrasil's lint and PR title modules, plus `.github/workflows/shell.yml`, which starts an interactive zsh on Ubuntu and macOS. Add any new alias or function to its `expected` list.
