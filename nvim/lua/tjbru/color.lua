vim.g.tjbru_colorscheme = "tokyonight"

function ColorMyPencils()
    vim.g.gruvbox_contrast_dark = 'hard'

    --[[
    if vim.fn.exists('+termguicolors') then
        let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
        let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    end
    ]]

    vim.g.gruvbox_invert_selection = '0'
    vim.opt.background = "dark"
    vim.cmd("colorscheme " .. vim.g.tjbru_colorscheme)

    vim.api.nvim_set_hl(0, "ColorColumn", {
        ctermbg = 0,
        bg="#555555",
    })
    vim.api.nvim_set_hl(0, "SignColumn", {
        bg="none",
    })
    vim.api.nvim_set_hl(0, "CursorLineNR", {
        bg="none",
    })

    --[[
    highlight Normal guibg=none
    highligh LineNr guifg=#5eacd3
    highlight netrwDir guifg=#5eacd3
    highlight qfFileName guifg=#aed75f
    hi TelescopeBorder guifg=#%eacd
    ]]
end
ColorMyPencils()
