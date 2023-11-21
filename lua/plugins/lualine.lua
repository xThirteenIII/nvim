local M = {
    	-- statusline
		"nvim-lualine/lualine.nvim",
}

function M.config()
    require("lualine").setup({
        opts = {
            options = {
                theme = "solarized_dark",
            }
        }
    })
end

return M
