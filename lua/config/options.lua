-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Per-machine overrides: create lua/config/options.local.lua on any machine
-- with machine-specific settings (fonts, keymaps, paths, etc.). It's gitignored
-- so it stays local and never syncs to other machines.
local ok, err = pcall(require, "config.options_local")
if not ok then
  -- Ignore the missing-file error; only surface real runtime errors.
  if not err:match("module 'config%.options_local' not found") then
    error(err)
  end
end
