-- launch contains a function that creates a table to pass to lazy.lua which loads lazy plugin manager
require "user.launch"
-- keymaps sets global leader
require "user.set"
require "user.keymaps"

-- Plugin tables
spec "plugins.telescope"

-- colorschemes plugins
spec "plugins.rosepine"
spec "plugins.solarized-osaka"
spec "plugins.fluoroscheme"

spec "plugins.treesitter"
spec "plugins.undotree"

-- LSP server
spec "plugins.lspzero"
-- require('lspname').setup{} in lsp plugin to enable it
spec "plugins.lsp"
-- install lsp with mason (cmd:Mason)
spec "plugins.mason"

spec "plugins.nvimcmp"


spec "plugins.todo"

spec "plugins.dap"
spec "plugins.dap-go"
spec "plugins.dapui"

spec "plugins.harpoon"
spec "plugins.autopair"
spec "plugins.mini"
spec "plugins.lualine"
spec "plugins.indentline"

-- This loads the plugin manager
require "user.lazy"
require "user.dapuistart"

-- Set keymaps after all the plugins are loaded.
-- How to load them before?
require "user.pluginkeys"
require "user.colorscheme"
