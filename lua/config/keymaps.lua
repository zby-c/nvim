-- keymaps.lua - Key bindings

vim.g.mapleader = " "

vim.g.maplocalleader = " "

vim.keymap.set("n", "<Esc>", "<Cmd>nohlsearch<CR>")

vim.keymap.set("n", "<Leader>w", "<Cmd>write<CR>", { desc = "Write file" })

vim.keymap.set("n", "<Tab>", "<C-w>", { desc = "+window" })

-- Disable arrow keys in normal mode
-- vim.keymap.set("n", "<Left>", "<Cmd>echo 'H ==> Left'<CR>")
-- vim.keymap.set("n", "<Right>", "<Cmd>echo 'L ==> Right'<CR>")
-- vim.keymap.set("n", "<Up>", "<Cmd>echo 'K ==> Up'<CR>")
-- vim.keymap.set("n", "<Down>", "<Cmd>echo 'J ==> Down'<CR>")

-- Use Ctrl+hjkl to switch between windows (Normal Mode)
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Use Ctrl+hjkl to move the cursor (Insert Mode)
vim.keymap.set("i", "<C-h>", "<Left>", { desc = "Left" })
vim.keymap.set("i", "<C-l>", "<Right>", { desc = "Right" })
vim.keymap.set("i", "<C-j>", "<Down>", { desc = "Down" })
vim.keymap.set("i", "<C-k>", "<Up>", { desc = "Up" })
