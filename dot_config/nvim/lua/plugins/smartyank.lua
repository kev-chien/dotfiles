return {
  {
    "ibhagwan/smartyank.nvim",
    lazy = false,
    config = function()
      require("smartyank").setup({
        osc52 = {
          enabled = true,
          ssh_only = true, -- OSC52 yank also in local sessions
          silent = false, -- false to disable the "n chars copied" echo
        },
        -- By default copy is only triggered by "intentional yanks" where the
        -- user initiated a `y` motion (e.g. `yy`, `yiw`, etc). Set to `false`
        -- if you wish to copy indiscriminately:
        validate_yank = false,
        --
        -- For advanced customization set to a lua function returning a boolean
        -- for example, the default condition is:
        -- validate_yank = function() return vim.v.operator == "y" end,
      })
    end,
  },
}
