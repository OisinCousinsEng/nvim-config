# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

## Keeping this config in sync

This repo is the single source of truth for the config on every machine. Plugin
versions are pinned by `lazy-lock.json`, which is committed, so all machines
stay on the exact same plugin state.

### On a new machine

```sh
git clone git@github.com:OisinCousinsEng/nvim-config.git ~/.config/nvim
~/.config/nvim/nvim-sync
```

The sync script pulls the latest config, then restores plugins to the locked
versions. Mason tools listed in `lua/plugins/mason.lua` auto-install the next
time nvim starts.

### Updating a machine

```sh
~/.config/nvim/nvim-sync
```

Pull changes made on other machines, then sync plugins to match.

### Pushing your own changes

```sh
~/.config/nvim/nvim-sync --push
```

Commits any pending config changes, pulls with rebase, pushes, then syncs.

### Keeping plugins up to date

From nvim, run `:Lazy update`, then commit the updated `lazy-lock.json`:

```sh
git add lazy-lock.json
git commit -m "chore: update plugins"
git push
```

The lock file is authoritative — other machines pick up the new versions on
their next `nvim-sync`.

### Machine-specific settings

Anything that differs between machines (fonts, paths, local keymaps) belongs in
`lua/config/options_local.lua`. It is gitignored, so it never syncs and never
accidentally gets committed. Create the file on each machine as needed.

## Workflow

- **Edit on one machine at a time** — pull before you start editing to avoid
  merge conflicts.
- **Never commit secrets** — keep API keys and credentials out of this repo.
