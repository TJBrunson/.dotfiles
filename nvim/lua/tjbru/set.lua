vim.opt.guicursor = ""
vim.opt.relativenumber = true
vim.opt.hlsearch = false
vim.opt.hidden = true
vim.opt.errorbells = false
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.nu = true
vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "~/.vim/undodir"
vim.opt.undofile = ture
vim.opt.incsearch = true
vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

-- Give more space for displaying messages
vim.opt.cmdheight = 1

--[[
--Having longer update time leads to noticeable delays and poor user experience
--]]
vim.opt.updatetime = 50

-- Dont pass messages to |ins-completeion-menu|
vim.opt.shortmess:append("c")

vim.opt.colorcolumn = "120"

vim.g.mapleader = " "
