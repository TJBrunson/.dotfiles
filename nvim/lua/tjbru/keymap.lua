-- Keymap utility module
-- Provides convenience functions for setting up keymaps in different modes
local M = {}

-- Helper function to create keymap binding functions
-- @param op - The mode to bind the keymap to (n=normal, v=visual, i=insert, x=visual block)
-- @param outer_opts - Default options to apply to all keymaps created with this binding
-- @return A function that sets keymaps with the specified mode and options
function bind(op, outer_opts)
    outer_opts = outer_opts or {noremap = true}
    return function(lhs, rhs, opts)
        -- Merge the default options with any provided options
        opts = vim.tbl_extend("force",
            outer_opts,
            opts or {}
        )
        -- Set the keymap using Neovim's API
        vim.keymap.set(op, lhs, rhs, opts)
    end
end

-- Normal mode mapping (allows recursive mapping)
-- Use for mappings that need to trigger other mappings
M.nmap = bind("n", {noremap = false})

-- Normal mode non-recursive mapping
-- Use for most normal mode mappings to prevent unexpected behavior
M.nnoremap = bind("n")

-- Visual mode non-recursive mapping
-- For commands that operate on visual selections
M.vnoremap = bind("v")

-- Visual block mode non-recursive mapping
-- For commands specific to block selections (Ctrl+v)
M.xnoremap = bind("x")

-- Insert mode non-recursive mapping
-- For mappings that trigger while in insert mode
M.inoremap = bind("i")

return M
