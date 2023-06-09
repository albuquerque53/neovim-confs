--  ███▄    █ ██▒   █▓ ██▓ ███▄ ▄███▓   ▓█████▄ ▓█████     ▄████▄   ██▀███   ██▓ ▄▄▄      
--  ██ ▀█   █▓██░   █▒▓██▒▓██▒▀█▀ ██▒   ▒██▀ ██▌▓█   ▀    ▒██▀ ▀█  ▓██ ▒ ██▒▓██▒▒████▄    
-- ▓██  ▀█ ██▒▓██  █▒░▒██▒▓██    ▓██░   ░██   █▌▒███      ▒▓█    ▄ ▓██ ░▄█ ▒▒██▒▒██  ▀█▄  
-- ▓██▒  ▐▌██▒ ▒██ █░░░██░▒██    ▒██    ░▓█▄   ▌▒▓█  ▄    ▒▓▓▄ ▄██▒▒██▀▀█▄  ░██░░██▄▄▄▄██ 
-- ▒██░   ▓██░  ▒▀█░  ░██░▒██▒   ░██▒   ░▒████▓ ░▒████▒   ▒ ▓███▀ ░░██▓ ▒██▒░██░ ▓█   ▓██▒
-- ░ ▒░   ▒ ▒   ░ ▐░  ░▓  ░ ▒░   ░  ░    ▒▒▓  ▒ ░░ ▒░ ░   ░ ░▒ ▒  ░░ ▒▓ ░▒▓░░▓   ▒▒   ▓▒█░
-- ░ ░░   ░ ▒░  ░ ░░   ▒ ░░  ░      ░    ░ ▒  ▒  ░ ░  ░     ░  ▒     ░▒ ░ ▒░ ▒ ░  ▒   ▒▒ ░
--    ░   ░ ░     ░░   ▒ ░░      ░       ░ ░  ░    ░      ░          ░░   ░  ▒ ░  ░   ▒   
--          ░      ░   ░         ░         ░       ░  ░   ░ ░         ░      ░        ░  ░
--                ░                      ░                ░                               

vim.cmd('filetype plugin indent on')

-- Plugins
require('plugins')

-- Editor
vim.opt.cursorline = true
vim.opt.hidden = true
vim.opt.number = true
vim.opt.autoindent = true
vim.opt.relativenumber = true
vim.opt.inccommand = 'split'
vim.opt.modifiable = true
vim.opt.wrap = false 
vim.opt.tabstop = 4
vim.opt.softtabstop = 0
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.clipboard = 'unnamedplus'
vim.opt.mouse = 'a'
require('config.gitsigns')
require('config.git')
require('config.bufferline')
require('config.fzf')
require('config.indentlines')
require('config.tree')
require('config.gitconflict')
require('config.windows')

-- LSP
require('config.lspconfig')
require('config.lspsaga')
require('config.lspkind')
require('config.treesiter')
require('config.cmp')
require('config.autopairs')

-- Theme
require('config.lualine')
require('config.catppuccin')

-- Keymaps 
vim.g.mapleader = '\\'
vim.api.nvim_set_keymap('n', '<leader>cl', ':bd<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>ca', ':bufdo bd<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fcs', ':vsplit ~/.config/nvim/init.lua<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fce', ':edit ~/.config/nvim/init.lua<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fpe', ':edit ~/.config/nvim/lua/plugins.lua<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fps', ':vsplit ~/.config/nvim/lua/plugins.lua<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fcl', ':luafile %<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader><space>', ':nohlsearch<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>pi', ':PackerInstall<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>bl', ':set background=light<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>bd', ':set background=dark<cr>', { noremap = true })
