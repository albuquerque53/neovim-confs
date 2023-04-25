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
source          ~/.config/nvim/lspconfig.rc.vim
set             completeopt=menuone,noinsert,noselect


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
