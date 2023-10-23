-- TODO: move keymaps in a lua file. Got to understand how to.
--local builtin = require('telescope.builtin')
--vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
--vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
--vim.keymap.set('n', '<leader>fs', function()
--			builtin.grep_string({ search = vim.fn.input("Grep > ") });
--			end)
--vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
--vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})


local M = {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
-- or                              , branch = '0.1.x',
      dependencies = { 'nvim-lua/plenary.nvim' }
}
function M.config()	
	require("telescope").setup{
		
		find_files = {
			theme = "dropdown",
			previewer = false,
      		},
		colorscheme = {
			enable_preview = true,
		},
		extensions = {
		      fzf = {
			fuzzy = true, -- false will only do exact matching
			override_generic_sorter = true, -- override the generic sorter
			override_file_sorter = true, -- override the file sorter
			case_mode = "smart_case", -- or "ignore_case" or "respect_case"
		      },
		    },
	}
end

return M

