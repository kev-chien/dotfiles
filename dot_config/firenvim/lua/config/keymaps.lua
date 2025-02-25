-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- c goes to black hole register
vim.keymap.set("n", "c", '"_c', { noremap = true })
vim.keymap.set("v", "c", '"_c', { noremap = true })

-- C goes to black hole register
vim.keymap.set("n", "C", '"_C', { noremap = true })
vim.keymap.set("v", "C", '"_C', { noremap = true })

-- x goes to black hole register
vim.keymap.set("n", "x", '"_x', { noremap = true })
vim.keymap.set("v", "x", '"_x', { noremap = true })

-- paste without overwriting the default register
vim.keymap.set("x", "p", '"_dP', { noremap = true })

-- Move Lines
vim.keymap.set("n", "<S-Down>", "<cmd>m .+1<cr>==", { desc = "Move Down" })
vim.keymap.set("n", "<S-Up>", "<cmd>m .-2<cr>==", { desc = "Move Up" })
vim.keymap.set("i", "<S-Down>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
vim.keymap.set("i", "<S-Up>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
vim.keymap.set("v", "<S-Down>", ":m '>+1<cr>gv=gv", { desc = "Move Down" })
vim.keymap.set("v", "<S-Up>", ":m '<-2<cr>gv=gv", { desc = "Move Up" })

-- Tab, S-Tab to indent/unindent
vim.keymap.set("n", "<Tab>", ">>", { noremap = true })
vim.keymap.set("n", "<S-Tab>", "<<", { noremap = true })
vim.keymap.set("v", "<Tab>", ">gv", { noremap = true })
vim.keymap.set("v", "<S-Tab>", "<gv", { noremap = true })
-- TODO: fix this mapping
vim.keymap.set("i", "<S-Tab>", "<C-d>", { noremap = true })

-- Yank filename to system clipboard
vim.keymap.set(
  "n",
  "<leader>n",
  "<cmd>let @*=expand('%')<cr><cmd>echo expand('%')<cr>",
  { noremap = true, desc = "Yank filename" }
)

-- Vim fugitive
vim.keymap.set("n", "<leader>gm", "<cmd>Git blame<cr>", { noremap = true, desc = "Git blame" })
vim.keymap.set("n", "<leader>o", "<cmd>GBrowse!<cr>", { noremap = true, desc = "GBrowse (clipboard)" })
vim.keymap.set("v", "<leader>o", "<esc><cmd>'<,'>GBrowse!<cr>", { noremap = true, desc = "GBrowse (clipboard)" })
