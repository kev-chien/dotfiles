return {
  {
    "jake-stewart/multicursor.nvim",
    branch = "1.0",
    config = function()
      local mc = require("multicursor-nvim")

      mc.setup()

      -- Customize how cursors look.
      vim.api.nvim_set_hl(0, "MultiCursorCursor", { link = "Cursor" })
      vim.api.nvim_set_hl(0, "MultiCursorVisual", { link = "Visual" })
      vim.api.nvim_set_hl(0, "MultiCursorDisabledCursor", { link = "Visual" })
      vim.api.nvim_set_hl(0, "MultiCursorDisabledVisual", { link = "Visual" })
    end,
    keys = {
      {
        "<C-n>",
        function()
          require("multicursor-nvim").addCursor("*")
        end,
        mode = { "n", "v" },
        desc = "Add a cursor and jump to the next word under cursor",
      },
      {
        "<C-s>",
        function()
          require("multicursor-nvim").skipCursor("*")
        end,
        mode = { "n", "v" },
        desc = "Jump to the next word under cursor but do not add a cursor",
      },
      {
        "<esc>",
        function()
          local mc = require("multicursor-nvim")
          if not mc.cursorsEnabled() then
            mc.enableCursors()
          elseif mc.hasCursors() then
            mc.clearCursors()
          else
            -- Default <esc> handler.
          end
        end,
        desc = "esc",
      },
      {
        "<leader>me",
        function()
          local mc = require("multicursor-nvim")
          if mc.cursorsEnabled() then
            mc.disableCursors()
          else
            mc.enableCursors()
          end
        end,
        mode = { "n", "v" },
        desc = "Enable/disable cursors",
      },
      -- Add cursors above/below the main cursor.
      {
        "<Up>",
        function()
          require("multicursor-nvim").addCursor("k")
        end,
        mode = { "n", "v" },
        desc = "Add cursor above",
      },
      {
        "<Down>",
        function()
          require("multicursor-nvim").addCursor("j")
        end,
        mode = { "n", "v" },
        desc = "Add cursor below",
      },
      -- Rotate the main cursor.
      {
        "<Left>",
        function()
          require("multicursor-nvim").prevCursor()
        end,
        mode = { "n", "v" },
        desc = "Rotate cursor left",
      },
      {
        "<Right>",
        function()
          require("multicursor-nvim").nextCursor()
        end,
        mode = { "n", "v" },
        desc = "Rotate cursor right",
      },
      -- Delete the main cursor.
      {
        "<leader>mx",
        function()
          require("multicursor-nvim").deleteCursor()
        end,
        mode = { "n", "v" },
        desc = "Delete cursor",
      },
      -- Add a cursor.
      {
        "<leader>ma",
        function()
          require("multicursor-nvim").addCursor()
        end,
        mode = { "n", "v" },
        desc = "Add cursor",
      },
      -- Append/insert for each line of visual selections.
      {
        "I",
        function()
          require("multicursor-nvim").insertVisual()
        end,
        mode = "v",
        desc = "Insert for each line of visual selections",
      },
      {
        "A",
        function()
          require("multicursor-nvim").appendVisual()
        end,
        mode = "v",
        desc = "Append for each line of visual selections",
      },
    },
  },
}
