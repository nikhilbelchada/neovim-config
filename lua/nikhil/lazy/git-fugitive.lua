vim.keymap.set('n', '<leader>gg', ":Git<CR>", { desc = '[G]it [T]oggle' })
vim.keymap.set('n', '<leader>gc', ":Git commit<CR>", { desc = '[G]it [C]ommit' })

return {
  "tpope/vim-fugitive"
}
