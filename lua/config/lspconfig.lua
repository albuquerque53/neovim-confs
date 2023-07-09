local lspconfig = require('lspconfig')

local function on_attach(client, bufnr)
    vim.api.nvim_exec([[
      autocmd FileType php silent! call phpactor#Highlight()
    ]], false)

    vim.api.nvim_exec([[
      autocmd BufWritePost <buffer> silent! call phpactor#Highlight()
    ]], false)

    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
end

lspconfig.phpactor.setup {
  on_attach = on_attach,
  cmd = { 'phpactor' },
  filetypes = { 'php' },
  root_dir = lspconfig.util.root_pattern('.git', 'composer.json'),
}
