-- открыть/закрыть дерево
vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

-- открыть дерево и перейти к текущему файлу
vim.keymap.set("n", "<leader>e", ":NvimTreeFindFileToggle<CR>", { noremap = true, silent = true })
