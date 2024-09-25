return {
  {
    "lanej/vim-phabricator",
    config = function()
      vim.g.phabricator_hosts = { "phab.easypo.net" }
      vim.g.phabricator_api_token = vim.env.PHAB_TOKEN
    end,
  },
}
