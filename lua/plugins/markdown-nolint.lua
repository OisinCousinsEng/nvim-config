return {
  {
    "mfussenegger/nvim-lint",
    opts = function(_, opts)
      opts.linters_by_ft = opts.linters_by_ft or {}
      opts.linters_by_ft.markdown = {}
      opts.linters_by_ft["markdown.mdx"] = {}
    end,
  },
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      opts.formatters_by_ft = opts.formatters_by_ft or {}
      for _, ft in ipairs({ "markdown", "markdown.mdx" }) do
        local formatters = opts.formatters_by_ft[ft]
        if formatters then
          opts.formatters_by_ft[ft] = vim.tbl_filter(function(f)
            return f ~= "markdownlint-cli2"
          end, formatters)
        end
      end
    end,
  },
}