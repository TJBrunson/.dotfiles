vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function()
    use('wbthomason/packer.nvim')

    use('nvim-lua/plenary.nvim')
    use('TimUntersberger/neogit')


end)
