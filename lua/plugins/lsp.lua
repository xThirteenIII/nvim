-- LSP
local M = {
    'neovim/nvim-lspconfig',
    cmd = 'LspInfo',
    event = {'BufReadPre', 'BufNewFile'},
    dependencies = {
      {'hrsh7th/cmp-nvim-lsp'},
    }
}

-- Language servers must be installed first!
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#bashls
function M.config()
      -- This is where all the LSP shenanigans will live
      local lsp_zero = require('lsp-zero')
      lsp_zero.extend_lspconfig()

      lsp_zero.on_attach(function(client, bufnr)
        -- see :help lsp-zero-keybindings
        -- to learn the available actions
        lsp_zero.default_keymaps({buffer = bufnr})
      end)

      -- Note: If installing a lsp with Mason, need to 
      -- put the required setup here to make the lsp work.

      -- Config gopls
      require('lspconfig').gopls.setup{}

      -- Bashls
      require('lspconfig').bashls.setup{}

      -- Swift
      --require('lspconfig').sourcekit.setup{}

      -- javascript, json, typescript etc.
      require('lspconfig').biome.setup{}

      -- html
      require('lspconfig').htmx.setup{}

      -- java
       require('lspconfig').jdtls.setup{}

      -- python
      require('lspconfig').pyright.setup{}

      -- rust
      require('lspconfig').rust_analyzer.setup{}

      -- (Optional) Configure lua language server for neovim
      local lua_opts = lsp_zero.nvim_lua_ls()
      require('lspconfig').lua_ls.setup(lua_opts)
end

return M
