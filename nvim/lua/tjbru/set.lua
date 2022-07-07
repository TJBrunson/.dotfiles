vim.o.guicursor = ""
vim.o.relativenumber = true
vim.o.hlsearch = false
vim.o.hidden = true
vim.o.errorbells = false
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.nu = true
vim.o.wrap = false
vim.o.swapfile = false
vim.o.backup = false
vim.o.undodir = os.getenv("HOME") .. "~/.vim/undodir"
vim.o.undofile = ture
vim.o.incsearch = true
vim.o.termguicolors = true
vim.o.scrolloff = 8
vim.o.signcolumn = "yes"
-- vim.o.isfname:append("@-@")

-- Give more space for displaying messages
vim.o.cmdheight = 1

--[[
--Having longer update time leads to noticeable delays and poor user experience
--]]
vim.o.updatetime = 50

-- Dont pass messages to |ins-completeion-menu|
-- vim.o.shortmess:append("c")

vim.o.colorcolumn = 80
