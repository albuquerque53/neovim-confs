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

-- LSP
require('config.lspconfig')
require('config.lspsaga')
require('config.lspkind')
require('config.cmp')
require('config.autopairs')
vim.opt.omnifunc = 'syntaxcomplete#Complete'

-- Theme
require('config.lualine')
vim.cmd('colorscheme melange')
vim.opt.background = 'dark'
vim.cmd('highlight Normal ctermbg=NONE guibg=NONE')

-- Keymaps 
vim.g.mapleader = '\\'
vim.api.nvim_set_keymap('n', '<leader>cl', ':bd<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fcs', ':vsplit ~/.config/nvim/init.lua<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fce', ':edit ~/.config/nvim/init.lua<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fpe', ':edit ~/.config/nvim/lua/plugins.lua<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fps', ':edit ~/.config/nvim/lua/plugins.lua<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fcl', ':source ~/.config/nvim/init.lua<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader><space>', ':nohlsearch<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>pi', ':PackerInstall<cr>', { noremap = true })
