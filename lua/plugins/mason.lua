return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      -- LSP servers, formatters and linters that are NOT auto-installed by
      -- the enabled LazyVim extras. Anything a lang.* extra covers is handled
      -- by that extra already, so don't duplicate it here.
      "bash-language-server", -- bash LSP (no lang.sh extra enabled)
      "shellcheck", -- bash linting
      "shfmt", -- bash formatting
      "stylua", -- lua formatter (shared, wanted on every machine)
      "tree-sitter", -- CLI used by nvim-treesitter for parser management
    },
  },
}
