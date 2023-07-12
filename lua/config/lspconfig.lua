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
    cmd = { 'phpactor', 'language-server' },
    filetypes = { 'php' },
    root_dir = lspconfig.util.root_pattern('.git', 'composer.json'),
    settings = {
        phpactor = {
            enable_completion = true,  -- Enable autocompletion
            enable_docblock = true,   -- Enable PHP Docblock support
        }
    }
}

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
        virtual_text = true,
        signs = true,
        underline = true,
        update_in_insert = true,
    }
)
