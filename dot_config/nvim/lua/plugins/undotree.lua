return {
  {
    "jiaoshijie/undotree",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require("undotree").setup()
    end,
    keys = {
      {
        "<leader>ut",
        function()
          require("undotree").toggle()
        end,
        mode = { "n", "v" },
        desc = "Toggle undotree",
      },
    },
  },
}
