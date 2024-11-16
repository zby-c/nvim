-- options.lua - Core settings

-- Show line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Set pumheight (such as cmp window)
vim.opt.pumheight = 12

-- Other UI options
vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.colorcolumn = "120"
vim.opt.showmode = false
vim.opt.inccommand = "split"

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

-- Use exrc
-- Auto load .nvim.lua in cwd
vim.opt.exrc = true


-- [[ Neovide ]]
if vim.g.neovide then
    vim.opt.guifont = "JetbrainsMonoNL Nerd Font:h11"
    vim.g.neovide_transparency = 0.98
end
