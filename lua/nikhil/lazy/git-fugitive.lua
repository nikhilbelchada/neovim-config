vim.keymap.set('n', '<leader>gg', ":Git<CR>", { desc = '[G]it [T]oggle' })
vim.keymap.set('n', '<leader>gc', ":Git commit<CR>", { desc = '[G]it [C]ommit' })
vim.keymap.set('n', '<leader>gp', function()
  require('FTerm').scratch({ cmd = 'echo "git push" && git push -v' })
end, { desc = '[Git] [P]ush' })

return {
  "tpope/vim-fugitive"
}
