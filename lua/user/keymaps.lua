-- n stands for normal mode
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

-- move highlighted lines up and down
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")



