local M = {
    "williamboman/mason.nvim"
}

function M.config()
	require("mason").setup({
		ui = {
			icons = {
			    package_installed = "✓",
			    package_pending = "➜",
			    package_uninstalled = "✗"
			}
		    },
		keymaps = {
			-- Keymap to install the package under the current cursor position
            		install_package = "i",
		}
		})
end

return M
