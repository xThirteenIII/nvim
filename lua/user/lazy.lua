-- lazy plugin manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

--https://github.com/folke/lazy.nvim to see config

-- plugins should be a table or a string.
-- A table is a list with your Plugin Spec
require("lazy").setup{
	spec = LAZY_PLUGIN_SPEC,
	ui = {
		border = "rounded",
	},
	  change_detection = {
	    enabled = true,
	    notify = false,
	  },
}
