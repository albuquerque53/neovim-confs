vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'neovim/nvim-lspconfig'
    use "savq/melange-nvim"
    use "lukas-reineke/indent-blankline.nvim"
    use 'L3MON4D3/LuaSnip'
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }
    use({
        "glepnir/lspsaga.nvim",
        opt = true,
        branch = "main",
        event = "LspAttach",
        config = function()
            require("lspsaga").setup({})
        end,
        requires = {
            {"nvim-tree/nvim-web-devicons"},
        }
    })
    use 'folke/lsp-colors.nvim'
    use 'onsails/lspkind.nvim'
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    use {
      "windwp/nvim-autopairs",
      config = function() require("nvim-autopairs").setup {} end
    }   
    use 'lewis6991/gitsigns.nvim'
    use {
      'dinhhuy258/git.nvim'
    }
    use {
        'akinsho/bufferline.nvim',
        tag = "*",
        requires = 'nvim-tree/nvim-web-devicons'
    }
    use 'ryanoasis/vim-devicons'
    use { 'junegunn/fzf', run = './install --bin', }
    use { 'ibhagwan/fzf-lua',
      requires = { 'nvim-tree/nvim-web-devicons' }
    }
    use 'ggandor/lightspeed.nvim'
end)
