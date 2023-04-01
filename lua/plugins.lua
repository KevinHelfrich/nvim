vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
        -- Packer can manage itself
        use 'wbthomason/packer.nvim'
        -- Make the UI pretty
        use 'feline-nvim/feline.nvim'
        use 'nvim-tree/nvim-web-devicons'
        use {'romgrk/barbar.nvim', requires = 'nvim-web-devicons'}
        use {'goolord/alpha-nvim', requires = 'nvim-web-devicons'}
        use 'luisiacc/gruvbox-baby'
        -- Fuzzy file finder
        use 'nvim-lua/plenary.nvim'
        use { 'nvim-telescope/telescope.nvim', requires = 'nvim-lua/plenary.nvim' }
        -- Completion engine
        use 'neovim/nvim-lspconfig'
        use 'hrsh7th/cmp-nvim-lsp'
        use 'hrsh7th/cmp-buffer'
        use 'hrsh7th/cmp-path'
        use 'hrsh7th/cmp-cmdline'
        use 'hrsh7th/nvim-cmp'
        use 'dcampos/nvim-snippy'
        use 'dcampos/cmp-snippy'
        -- Better syntax highlighting
        use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
end)
