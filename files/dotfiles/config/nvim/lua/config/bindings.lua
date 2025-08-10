local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fo', builtin.oldfiles, { desc = 'Telescope find old files'})

vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.current_buffer_fuzzy_find, { desc = 'Telescope Fuzzy find current buffer' })
vim.keymap.set('n', '<leader>fr', builtin.lsp_references, { desc = 'Telescope find references'})
vim.keymap.set('n', '<leader>fs', builtin.grep_string, { desc = 'Telescope find string'})
-- vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

vim.keymap.set('n', '<leader>gs', builtin.git_status, { desc = 'Telescope git status' })

vim.keymap.set('n', '<leader>td', function()
    vim.diagnostic.enable(not vim.diagnostic.is_enabled())
end, { silent = true, noremap = true, desc = 'Toggle Diagnostics' })

vim.keymap.set('n', '<leader>fc', function()
    builtin.find_files { cwd = vim.fn.stdpath('config') }
end, { desc = 'Telescope config files' })
