-- TODO: move keymaps in a lua file. Got to understand how to.
--
--
-- Telescope keymaps
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
vim.keymap.set('n', '<leader>fs', function()
			builtin.grep_string({ search = vim.fn.input("Grep > ") });
		end)
vim.keymap.set('n', '<leader>fr', builtin.oldfiles, {})
--vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- Undotree keymaps
vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)

-- Nvimtree keymaps
 vim.keymap.set('n', '<leader>e', vim.cmd.NvimTreeToggle)
