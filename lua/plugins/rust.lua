return {
  {
    "mrcjkb/rustaceanvim",
    opts = function(_, opts)
      local ra = opts.server.default_settings["rust-analyzer"]
      ra.cargo = ra.cargo or {}
      ra.cargo.check = ra.cargo.check or {}
      ra.cargo.check.command = "clippy"
      return opts
    end,
  },
  {
    "Saecki/crates.nvim",
    keys = {
      { "<leader>ct", function() require("crates").toggle() end, desc = "Toggle crates popup" },
      { "<leader>cr", function() require("crates").reload() end, desc = "Reload crates" },
      { "<leader>cu", function() require("crates").update_crate() end, desc = "Update crate" },
      { "<leader>ca", function() require("crates").update_all_crates() end, desc = "Update all crates" },
      { "<leader>cU", function() require("crates").upgrade_crate() end, desc = "Upgrade crate" },
      { "<leader>cA", function() require("crates").upgrade_all_crates() end, desc = "Upgrade all crates" },
      { "<leader>cp", function() require("crates").open_repository() end, desc = "Open repository" },
      { "<leader>cD", function() require("crates").show_dependencies() end, desc = "Show dependencies" },
    },
  },
}
