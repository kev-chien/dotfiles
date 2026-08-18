-- hotpot.nvim
local function ensure_installed(plugin, branch)
  local user, repo = string.match(plugin, "(.+)/(.+)")
  local repo_path = vim.fn.stdpath("data") .. "/lazy/" .. repo
  if not (vim.uv or vim.loop).fs_stat(repo_path) then
    vim.notify("Installing " .. plugin .. " " .. branch)
    local repo_url = "https://github.com/" .. plugin .. ".git"
    local out = vim.fn.system({
      "git",
      "clone",
      "--filter=blob:none",
      "--branch=" .. branch,
      repo_url,
      repo_path
    })
    if vim.v.shell_error ~= 0 then
      vim.api.nvim_echo({
        { "Failed to clone " .. plugin .. ":\n", "ErrorMsg" },
        { out, "WarningMsg" },
        { "\nPress any key to exit..." },
      }, true, {})
      vim.fn.getchar()
      os.exit(1)
    end
  end
  return repo_path
end

-- Install hotpot in the same manner as lazy.nvim, into Lazy's own plugin directory.
local lazy_path = ensure_installed("folke/lazy.nvim", "stable")
local hotpot_path = ensure_installed("rktjmp/hotpot.nvim", "v2.1.2")
-- As per Lazy's install instructions, but also include hotpot as
-- we have installed it to lazy.nvim's managed directory outside of Neovim's
-- runtimepath.
vim.opt.runtimepath:prepend({hotpot_path, lazy_path})

-- Important! When using Lazy.nvim you *must* require the hotpot module
-- before Lazy.nvim to ensure the module is loaded into memory prior to
-- lazy.nvim altering neovims behaviour.
require("hotpot")

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
