vim.opt.termguicolors = true

require("bufferline").setup{
    options = {
        mode = tabs,
        separator_style = 'thick',
        always_show_bufferline = false,
        show_close_icon = false,
        color_icons = true
    }
}

vim.api.nvim_set_keymap('n', 'gt', '<cmd>BufferLineCycleNext<CR>', {})
vim.api.nvim_set_keymap('n', 'gT', '<cmd>BufferLineCyclePrev<CR>', {})
