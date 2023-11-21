local M = { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} }



function M.config()

    local highlight = {
        "RainbowViolet",
        "RainbowIris",
    }

    local hooks = require "ibl.hooks"
    -- create the highlight groups in the highlight setup hook, so they are reset
    -- every time the colorscheme changes
    hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
        vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
        vim.api.nvim_set_hl(0, "RainbowIris", { fg = "#5D3FD3" })
    end)
        require("ibl").setup({
            indent = {
                -- indent color is Iris
                highlight = highlight[2],
                char = "|",
                smart_indent_cap = true,
                priority = 2,
            },

            --  The scope is *not* the current indentation level! Instead, it is the
            -- indentation level where variables or functions are accessible. This depends
            -- on the language you are writing.
            scope = {
                -- active scope color is Violet
                highlight = highlight[1],
            }
        })
end


return M
