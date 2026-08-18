return {
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = function(_, opts)
      opts.formatters_by_ft = opts.formatters_by_ft or {}

      opts.formatters_by_ft.go = { "goimports" }
      opts.formatters_by_ft.python = {}
      opts.formatters_by_ft.sh = {}

      return opts
    end,
    init = function()
      vim.api.nvim_create_user_command("FormatDisable", function(args)
        LazyVim.format.enable(false, args.bang)
      end, {
        desc = "Disable autoformat-on-save",
        bang = true,
      })

      vim.api.nvim_create_user_command("FormatEnable", function(args)
        LazyVim.format.enable(true, args.bang)
      end, {
        desc = "Re-enable autoformat-on-save",
        bang = true,
      })
    end,
  },
}
