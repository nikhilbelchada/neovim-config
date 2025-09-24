vim.cmd.colorscheme("tokyonight-moon")
 
vim.opt.clipboard = 'unnamedplus' -- use system keyboard for yank
 
vim.opt.nu = true                 -- set line numbers -- set line numbers
vim.opt.relativenumber = true     -- use relative line numbers
 
-- set tab size to 2 spaces
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
 
vim.opt.wrap = false
 
vim.opt.incsearch = true -- incremental search
 
vim.opt.termguicolors = true

-- Navigation
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')

-- Tabs
vim.keymap.set('n', '<C-n>', ":tabnew<CR>", { desc = '[T]ab New' })
vim.keymap.set('n', '<C-o>', ":tabnext<CR>", { desc = '[T]ab Next' })
vim.keymap.set('n', '<C-i>', ":tabprevious<CR>", { desc = '[T]ab Prev' })

-- Fterm
vim.keymap.set('n', '<C-t>', '<CMD>lua require("FTerm").toggle()<CR>')
vim.keymap.set('t', '<C-t>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')


--- Fugutive
vim.keymap.set('n', '<leader>gg', ":Git<CR>", { desc = '[G]it [T]oggle' })
vim.keymap.set('n', '<leader>gc', ":Git commit<CR>", { desc = '[G]it [C]ommit' })
vim.keymap.set('n', '<leader>gp', function()
  require('FTerm').scratch({ cmd = 'echo "git push" && git push -v' })
end, { desc = '[Git] [P]ush' })

-- Micro Python
vim.keymap.set("n", "<leader>mr", require("micropython_nvim").run)

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<C-a>', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader><space>', builtin.buffers, { desc = 'Telescope buffers' })
-- vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })


-- Tree
vim.keymap.set('n', '<leader>q', ':NvimTreeToggle<CR>', {})
vim.keymap.set('n', '<leader>ff', ':NvimTreeFindFile<CR>', {})

