local lspconfig = require('lspconfig')

lspconfig.intelephense.setup {
  on_attach = function(client, bufnr)
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
  end,
  cmd = { 'intelephense', '--stdio' },
  filetypes = { 'php' },
  root_dir = lspconfig.util.root_pattern('.git', 'composer.json'),
}
