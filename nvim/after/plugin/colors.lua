vim.g.tjbru_colorscheme = "gruvbox"

function ColorMyPencils()
    vim.g.gruvbox_contrast_dark = 'hard'

    vim.g.gruvbox_invert_selection = '0'
    vim.opt.background = "dark"
    vim.cmd("colorscheme " .. vim.g.tjbru_colorscheme)

    local hl = function(thing, opts)
        vim.api.nvim_set_hl(0, thing, opts)
    end

    hl("ColorColumn", {
        ctermbg = 0,
        bg = "#555555",
    })
    hl("SignColumn", {
        bg = "none",
    })
    hl("CursorLineNR", {
        bg = "none",
    })
    hl("LineNr", {
        fg = "#5eacd3",
    })
    hl("netrwDir", {
        fg = "#5eacd3",
    })
    hl("qfFileName", {
        fg = "#aed75f",
    })
    hl("TelescopeBorder", {
        fg = "#5eacd3",
    })
end
ColorMyPencils()
