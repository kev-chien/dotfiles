return {
  {
    "folke/todo-comments.nvim",
    opts = {
      highlight = {
        -- allow matching without the colon (which is in defaults)
        pattern = [[.*<(KEYWORDS)\s*]],
      },
      search = {
        -- allow matching without the colon (which is in defaults)
        pattern = [[\b(KEYWORDS)]],
      },
    },
  },
}
