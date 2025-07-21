local nnoremap = require('tjbru.keymap').nnoremap

-- Basic git commands
nnoremap("<leader>gs", "<cmd>Git<CR>")           -- Git status
nnoremap("<leader>gd", "<cmd>Gdiffsplit<CR>")    -- View diff of current file
nnoremap("<leader>gb", "<cmd>Git blame<CR>")     -- Git blame
nnoremap("<leader>gl", "<cmd>Git log<CR>")       -- Git log
