-- launch contains a function that creates a table to pass to lazy.lua which loads lazy plugin manager
require "user.launch"
-- keymaps sets global leader
require "user.set"
require "user.keymaps"

-- Plugin tables
spec "plugins.telescope"
spec "plugins.rosepine"
spec "plugins.solarized-osaka"
spec "plugins.treesitter"
spec "plugins.undotree"
spec "plugins.lspzero"
spec "plugins.nvimcmp"
spec "plugins.lsp"
spec "plugins.mason"
spec "plugins.harpoon"
spec "plugins.autopair"
spec "plugins.mini"
spec "plugins.lualine"
spec "plugins.indentline"

-- This loads the plugin manager
require "user.lazy"

-- Set keymaps after all the plugins are loaded.
-- How to load them before?
require "user.pluginkeys"
require "user.colorscheme"
