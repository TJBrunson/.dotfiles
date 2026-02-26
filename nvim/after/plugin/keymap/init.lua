local Remap = require("tjbru.keymap")
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
local xnoremap = Remap.xnoremap
local nmap = Remap.nmap

-- Open Netrw file explorer
nnoremap("<leader>ee", ":Ex<CR>")

-- Show Undotree
nnoremap("<leader>u", ":UndotreeShow<CR>")

-- Move selected lines down and maintain visual selection
vnoremap("J", ":m '>+1<CR>gv=gv")
-- Move selected lines up and maintain visual selection
vnoremap("K", ":m '<-2<CR>gv=gv")

-- Yank from cursor to end of line (consistent with D and C)
nnoremap("Y", "yg$")
-- Keep cursor centered when navigating through search results
nnoremap("n", "nzzzv")
nnoremap("N", "Nzzzv")
-- Join lines but keep cursor position
nnoremap("J", "mzJ`z")

-- Paste over selection without copying the deleted text (black hole register)
xnoremap("<leader>p", "\"_dp")

-- Yank to system clipboard
nnoremap("<leader>y", "\"+y")
vnoremap("<leader>y", "\"+y")
nmap("<leader>Y", "\"+Y")

-- Delete to black hole register (don't copy on delete)
nnoremap("<leader>d", "\"_d")
vnoremap("<leader>d", "\"_d")

-- Reload the current buffer with Ctrl+L
nnoremap("<leader>r", "<cmd>edit<CR>")

-- Reload all buffers with <leader>R
nnoremap("<leader>R", "<cmd>bufdo e!<CR>")

-- Open or create daily log file (<YYYY-MM-DD>.md) in cwd
nnoremap("<leader>td", function() require("tjbru.daily").open() end)

-- Open yesterday's daily log (if it exists)
nnoremap("<leader>ty", function() require("tjbru.daily").open_previous() end)

