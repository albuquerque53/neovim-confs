lua << EOF
local nvim_lsp = require('lspconfig')

nvim_lsp.intelephense.setup{
  cmd = { "intelephense", "--stdio" },
  filetypes = { "php" },
  root_dir = nvim_lsp.util.root_pattern("composer.json", ".git"),
}
EOF
