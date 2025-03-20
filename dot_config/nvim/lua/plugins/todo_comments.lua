return {
  {
    "folke/todo-comments.nvim",
    opts = {
      highlight = {
        -- highlight only the matched characteres, not surrounding characters (which is default behavior)
        keyword = "bg",
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
