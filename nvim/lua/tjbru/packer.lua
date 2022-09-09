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

    -- Treesitter
    use('nvim-treesitter/nvim-treesitter', {
        run = ':TSUpdate'
    })
    use('nvim-treesitter/playground')
    use('romgrk/nvim-treesitter-context')

    -- Autocmp
    use("neovim/nvim-lspconfig")
    use("hrsh7th/cmp-nvim-lsp")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/nvim-cmp")
    use("tzachar/cmp-tabnine", { run = "./install.sh" })
    use("onsails/lspkind-nvim")
    use("nvim-lua/lsp_extensions.nvim")
    use("glepnir/lspsaga.nvim")
    use("simrat39/symbols-outline.nvim")
    use("L3MON4D3/LuaSnip")
    use("saadparwaiz1/cmp_luasnip")

end)
