# zsh-without-etcdir

A tiny single-file zsh plugin (for oh-my-zsh / zplug / antigen etc.) that, when
the login shell is the system `/bin/zsh`, installs Homebrew's zsh built with
`--without-etcdir` (so `/etc/zprofile` is skipped and PATH order is preserved)
and switches the user's shell to `/usr/local/bin/zsh` via `chsh`.

- Language/stack: pure zsh script; no build, no tests, no dependencies beyond
  Homebrew on macOS.
- Status: legacy — `brew install --without-etcdir zsh` option was removed from
  Homebrew years ago, and the hardcoded `/usr/local` prefix predates Apple
  Silicon (`/opt/homebrew`). Treat as a historical sample, not active tooling.
- Files: `zsh-without-etcdir.plugin.zsh` (entire logic, ~10 lines),
  `README.md`. No LICENSE file.
- No build/run commands; the plugin is sourced by a zsh plugin manager.
