local M = {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"}

function M.config()
      require("nvim-treesitter.configs").setup({
          ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html" },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },  
	})
end
return M
