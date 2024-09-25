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

-- disable S-Up, S-Down (use A-k, A-j instead)
vim.keymap.set("n", "<S-Up>", "<nop>", { noremap = true })
vim.keymap.set("n", "<S-Down>", "<nop>", { noremap = true })
vim.keymap.set("v", "<S-Up>", "<nop>", { noremap = true })
vim.keymap.set("v", "<S-Down>", "<nop>", { noremap = true })

-- Tab, S-Tab to indent/unindent
vim.keymap.set("n", "<Tab>", ">>", { noremap = true })
vim.keymap.set("n", "<S-Tab>", "<<", { noremap = true })
vim.keymap.set("v", "<Tab>", ">gv", { noremap = true })
vim.keymap.set("v", "<S-Tab>", "<gv", { noremap = true })
-- TODO: fix this mapping
vim.keymap.set("i", "<S-Tab>", "<C-d>", { noremap = true })
