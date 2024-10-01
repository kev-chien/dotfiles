return {
  {
    "tpope/vim-fugitive",
    dependencies = {
      "tpope/vim-rhubarb",
      "lanej/vim-phabricator",
    },
  },
  -- github
  {
    "tpope/vim-rhubarb",
  },
  -- phabricator
  {
    "lanej/vim-phabricator",
    config = function()
      vim.g.phabricator_hosts = { "phab.easypo.net" }
      vim.g.phabricator_api_token = vim.env.PHAB_TOKEN
    end,
  },
}
