vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function()
    use('wbthomason/packer.nvim')

    use('nvim-lua/plenary.nvim')
    use('TimUntersberger/neogit')

    use('nvim-telescope/telescope.nvim')
    use('ThePrimeagen/git-worktree.nvim')
    use('ThePrimeagen/harpoon')

    use('mbbill/undotree')

    -- Color scheme
    use("gruvbox-community/gruvbox")
    use("folke/tokyonight.nvim")
end)
