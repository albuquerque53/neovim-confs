vim.keymap.set("n", "<leader>fg", "<cmd>lua require('fzf-lua').live_grep()<CR>", { silent = true })
vim.keymap.set("n", "<leader>ff", "<cmd>lua require('fzf-lua').files()<CR>", { silent = true })
