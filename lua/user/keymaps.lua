-- n stands for normal mode
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- move highlighted lines up and down
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- Open diagnostic floating window
-- "K" again to move cursor into window, "q" to quit
vim.keymap.set("n", "K", vim.diagnostic.open_float)

-- Move through windows (viewports)
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<C-q>", "<C-w>q")

-- Move to next diagnostic
vim.keymap.set("n", "<leader>n", vim.diagnostic.goto_next)
-- Move to previous diagnostic
vim.keymap.set("n", "<leader>N", vim.diagnostic.goto_prev)



