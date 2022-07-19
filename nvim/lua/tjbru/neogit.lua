local neogit = require('neogit')
local nnoremap = require('tjbru.keymap').nnoremap

neogit.setup{}

nnoremap("<leader>gs", function()
    neogit.open({
        kind = "vsplit"
    })
end)

nnoremap("<leader>ga", "<cmd>!git fetch --all<CR>");
