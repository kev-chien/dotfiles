return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      popup_border_style = "rounded",
      filesystem = {
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignored = false,
          never_show = { ".git" },
        },
      },
    },
  },
}
