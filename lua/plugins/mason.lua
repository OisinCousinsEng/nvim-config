return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      -- LSP servers, formatters and linters that are NOT auto-installed by
      -- the enabled LazyVim extras. Anything a lang.* extra covers is handled
      -- by that extra already, so don't duplicate it here.
      --
      -- NOTE: LSP servers listed here are only auto-*enabled* per-filetype by
      -- mason-lspconfig, not *installed*. Listing them in ensure_installed makes
      -- mason reinstall them on every startup, so a stray `:MasonUninstallAll`
      -- is recovered by simply restarting nvim.
      "bash-language-server", -- bash LSP (no lang.sh extra enabled)
      "shellcheck", -- bash linting
      "shfmt", -- bash formatting
      "stylua", -- lua formatter (shared, wanted on every machine)
      "tree-sitter-cli", -- CLI used by nvim-treesitter for parser management
      -- filetype-auto-enabled LSP servers (not covered by any lang.* extra)
      "lua-language-server", -- Lua
      "marksman", -- Markdown
      "docker-language-server", -- Dockerfile
      "docker-compose-language-service", -- docker-compose
      "json-lsp", -- JSON
      "ember-language-server", -- Ember/Glimmer
    },
  },
}
