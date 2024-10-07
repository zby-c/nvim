-- keybindings.lua - Basic keybindings

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "\\", ":")
vim.keymap.set("c", "\\", "<cr>")

-- Move lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")
