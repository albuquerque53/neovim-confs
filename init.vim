" ---------------------------------------------------------------------
" Plugins "{{{
" ---------------------------------------------------------------------
source          ~/.config/nvim/lua/plugins.lua

" ---------------------------------------------------------------------
" Editor "{{{
" ---------------------------------------------------------------------
set 		    cursorline
set 		    hidden
set 		    number
set 		    relativenumber
set 		    inccommand=split
set 		    modifiable
set             tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
set             clipboard+=unnamedplus
set             mouse=a


" ---------------------------------------------------------------------
" LSP "{{{
" ---------------------------------------------------------------------
source          ~/.config/nvim/lua/lspconfig.rc.lua
source          ~/.config/nvim/lua/lspsaga.rc.lua
source          ~/.config/nvim/lua/lspkind.rc.lua
source          ~/.config/nvim/lua/cmp.rc.lua
set             completeopt=menu,menuone
set             omnifunc=syntaxcomplete#Complete

" ---------------------------------------------------------------------
" Theme "{{{
" ---------------------------------------------------------------------
colorscheme     catppuccin-mocha
set             background=dark


" ---------------------------------------------------------------------
" KeyBinds "{{{
" ---------------------------------------------------------------------
let 		    mapleader="\\"
nnoremap 	    <leader>fcs     :vsplit ~/.config/nvim/init.vim<cr>
nnoremap 	    <leader>fce     :edit ~/.config/nvim/init.vim<cr>
nnoremap 	    <leader>fcl     :source ~/.config/nvim/init.vim<cr>
nnoremap 	    <leader><space> :nohlsearch<cr>
nnoremap 	    <leader>pi      :PackerInstall<cr>
nnoremap 	    <leader>ff <cmd>Telescope find_files<cr>
nnoremap 	    <leader>fg <cmd>Telescope live_grep<cr>
nnoremap 	    <leader>fb <cmd>Telescope buffers<cr>
nnoremap 	    <leader>fh <cmd>Telescope help_tags<cr>
