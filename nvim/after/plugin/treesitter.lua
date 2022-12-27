--[[require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = "all",
  sync_install = false,
  auto_install = true,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
--]]


require'treesitter-context'.setup{
    enable = true,
    max_lines = 0,
    trim_scope = 'inner',
    min_window_height = 0,
    patterns = {
        default = {
            'class',
            'function',
            'method',
            'for',
            'while',
            'if',
            'switch',
            'case',
        }
    }
}
