local M = {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-telescope/telescope.nvim" },
}

function M.config()
    require("todo-comments").setup{}
end

return M
