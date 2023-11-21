local M = { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} }



function M.config()

    local highlight = {
        "RainbowViolet",
    }

    local hooks = require "ibl.hooks"
    -- create the highlight groups in the highlight setup hook, so they are reset
    -- every time the colorscheme changes
    hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
        vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
    end)
        require("ibl").setup({
            indent = {
                highlight = highlight,
                char = "▏",
            }
        })
end

return M
