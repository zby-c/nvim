-- options.lua - Core settings

-- File encoding
vim.g.encoding = "UTF-8"
vim.o.fileencoding = "UTF-8"

--
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.colorcolumn = "120"
vim.opt.showmode = false
vim.opt.pumheight = 15

vim.opt.list = true
vim.opt.listchars = { space = "·", tab = ">-", trail = "―" }

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.scrolloff = 4
vim.opt.sidescrolloff = 4

vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.wrap = false

vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false

-- Tab
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.shiftround = true

-- Neovide
if vim.g.neovide then
    vim.opt.guifont = "JetbrainsMonoNL Nerd Font:h12"
    vim.g.neovide_transparency = 0.96
end
