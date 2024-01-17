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
      local lsp_config = require('lspconfig')


      -- Bashls
      lsp_config.bashls.setup{}

      -- Swift
      --require('lspconfig').sourcekit.setup{}

      -- javascript, json, typescript etc.
      --lsp_config.biome.setup{}

      -- c, c++
      lsp_config.clangd.setup{}

      -- java
      lsp_config.jdtls.setup{}

      -- python
      lsp_config.pyright.setup{}

      -- rust
      lsp_config.rust_analyzer.setup{}

      -- typescript
      lsp_config.tsserver.setup{}

      --Enable (broadcasting) snippet capability for completion
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities.textDocument.completion.completionItem.snippetSupport = true

      lsp_config.html.setup {
        capabilities = capabilities,
      }

      lsp_config.cssls.setup {
        capabilities = capabilities,
      }

      -- Config gopls
      lsp_config.gopls.setup{}

      -- (Optional) Configure lua language server for neovim
      local lua_opts = lsp_zero.nvim_lua_ls()
      lsp_config.lua_ls.setup(lua_opts)
end

return M
