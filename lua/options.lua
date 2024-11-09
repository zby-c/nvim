-- options.lua - Core settings

-- [[ Setting options ]]

-- Show line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Set pumheight (such as cmp window)
vim.opt.pumheight = 15

-- Other UI options
vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.colorcolumn = "120"
vim.opt.showmode = false
vim.opt.inccommand = "split"

-- Sync clipboard (OS <=> Nvim)
vim.schedule(function()
    vim.opt.clipboard = "unnamedplus"
end)

-- Display whitespace characters in the editor
vim.opt.list = true
vim.opt.listchars = { space = "·", tab = "» ", nbsp = "␣" }

-- How to split
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Number of scroll lines to keep
vim.opt.scrolloff = 4
vim.opt.sidescrolloff = 4

-- How to indent
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.breakindent = true
vim.opt.wrap = false

-- Backup & Swap & Undo Files
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false
vim.opt.undofile = true

-- Tab
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.shiftround = true

-- Decrease time
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300


-- [[ Keymaps ]]
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "<Esc>", "<Cmd>nohlsearch<CR>")

-- Disable arrow keys in normal mode
vim.keymap.set("n", "<Left>", "<Cmd>echo 'H <=> Left'<CR>")
vim.keymap.set("n", "<Right>", "<Cmd>echo 'L <=> Right'<CR>")
vim.keymap.set("n", "<Up>", "<Cmd>echo 'K <=> Up'<CR>")
vim.keymap.set("n", "<Down>", "<Cmd>echo 'J <=> Down'<CR>")

-- Use <Ctrl>+hjkl to switch between windows
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })


-- [[ Neovide ]]
if vim.g.neovide then
    vim.opt.guifont = "JetbrainsMonoNL Nerd Font:h12"
    vim.g.neovide_transparency = 0.95
end
