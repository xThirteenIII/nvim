-- This contains vim :set that you want
-- phat cursor
-- disable netrw in favor of nvimtree plugin
--vim.g.loaded_netrw = 1
--vim.g.loaded_netrwPlugin = 1

-- Set block cursor
vim.opt.guicursor = 'n-v-c:block-Cursor'

-- line numbers and relative numbers
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- incremental search
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

-- max scrolloff line number is 8
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50


-- Set leader key
vim.g.mapleader = ' '
