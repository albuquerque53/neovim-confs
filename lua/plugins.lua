vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    -- lsp 
    use 'neovim/nvim-lspconfig'
    use 'L3MON4D3/LuaSnip'
    use({
        'glepnir/lspsaga.nvim',
        opt = true,
        branch = 'main',
        event = 'LspAttach',
        config = function()
            require('lspsaga').setup({})
        end,
        requires = {
            {'nvim-tree/nvim-web-devicons'},
        }
    })
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }
    use 'folke/lsp-colors.nvim'
    use 'onsails/lspkind.nvim'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/nvim-cmp'

    -- appearance 
    use 'ryanoasis/vim-devicons'
    use 'savq/melange-nvim'
    use 'lukas-reineke/indent-blankline.nvim'

    -- editor
    use 'ggandor/lightspeed.nvim'
    use { 'junegunn/fzf', run = './install --bin', }
    use { 'ibhagwan/fzf-lua',
      requires = { 'nvim-tree/nvim-web-devicons' }
    }
    use {
      'windwp/nvim-autopairs',
      config = function() require('nvim-autopairs').setup {} end
    }
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    use {
        'akinsho/bufferline.nvim',
        tag = '*',
        requires = 'nvim-tree/nvim-web-devicons'
    }
    use {
        "nvim-telescope/telescope-file-browser.nvim",
        requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
    }
    use {
       'anuvyklack/windows.nvim',
       requires = {
          'anuvyklack/middleclass',
          'anuvyklack/animation.nvim'
       }
    }

    -- git
    use 'lewis6991/gitsigns.nvim'
    use 'dinhhuy258/git.nvim'
    use {
        'akinsho/git-conflict.nvim',
        tag = '*',
        config = function() require('git-conflict').setup()
    end}
end)
