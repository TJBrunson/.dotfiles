local Remap = require("tjbru.keymap")
local nnoremap = Remap.nnoremap

nnoremap("<C-p>", ":Telescope")
nnoremap("<leader>gf", ":lua require('telescope.builtin').git_files()<CR>")
vim.keymap.set('n', '<leader>gm', function()
    require('telescope.builtin').git_status({
        git_icons = {
            added = 'A',
            changed = 'M',
            copied = 'C',
            deleted = 'D',
            renamed = 'R',
            unmerged = 'U',
            untracked = '?',
        }
    })
end, { noremap = true, silent = true })

nnoremap("<leader>ff", ":lua require('telescope.builtin').find_files()<CR>")
nnoremap("<leader>fb", ":lua require('telescope.builtin').buffers()<CR>")
nnoremap("<leader>fs", ":lua require('telescope.builtin').grep_string({ search = vim.fn.input(\"Grep For > \")})<CR>")
nnoremap("<leader>fw", ":lua require('telescope.builtin').grep_string{ search = vim.fn.expand(\"<cword>\")}<CR>")
vim.keymap.set('v', '<leader>fv', function()
    -- Yank the current visual selection to a register
    vim.cmd('normal! "vy')
    local text = vim.fn.getreg('v')
    require('telescope.builtin').grep_string({ search = text })
end)

