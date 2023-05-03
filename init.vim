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
set 		    autoindent
set 		    relativenumber
set 		    inccommand=split
set 		    modifiable
set             tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
set             clipboard+=unnamedplus
set             mouse=a
set             colorcolumn=120
highlight       ColorColumn ctermbg=grey guibg=lightgrey
source          ~/.config/nvim/lua/telescope.rc.lua
source          ~/.config/nvim/lua/filebrowser.rc.lua
source          ~/.config/nvim/lua/gitsigns.rc.lua
source          ~/.config/nvim/lua/git.rc.lua
source          ~/.config/nvim/lua/bufferline.rc.lua
source          ~/.config/nvim/lua/fzf.rc.lua

" ---------------------------------------------------------------------
" LSP "{{{
" ---------------------------------------------------------------------
source          ~/.config/nvim/lua/lspconfig.rc.lua
source          ~/.config/nvim/lua/lspsaga.rc.lua
source          ~/.config/nvim/lua/lspkind.rc.lua
source          ~/.config/nvim/lua/cmp.rc.lua
source          ~/.config/nvim/lua/treesiter.rc.lua
source          ~/.config/nvim/lua/autopairs.rc.lua
set             omnifunc=syntaxcomplete#Complete


" ---------------------------------------------------------------------
" Theme "{{{
" ---------------------------------------------------------------------
source          ~/.config/nvim/lua/lualine.rc.lua
colorscheme     catppuccin-mocha
set             background=dark
" highlight       Normal ctermbg=NONE guibg=NONE UNCOMMENT TO TRANSPARENT
" BACKGROUND


" ---------------------------------------------------------------------
" KeyBinds "{{{
" ---------------------------------------------------------------------
let 		    mapleader="\\"
nnoremap 	    <leader>cl      :bd<cr>
nnoremap 	    <leader>fcs     :vsplit ~/.config/nvim/init.vim<cr>
nnoremap 	    <leader>fce     :edit ~/.config/nvim/init.vim<cr>
nnoremap 	    <leader>fcl     :source ~/.config/nvim/init.vim<cr>
nnoremap 	    <leader><space> :nohlsearch<cr>
nnoremap 	    <leader>pi      :PackerInstall<cr>
nnoremap 	    <leader>ff <cmd>Telescope find_files<cr>
nnoremap 	    <leader>fb <cmd>Telescope buffers<cr>
nnoremap 	    <leader>fh <cmd>Telescope help_tags<cr>
