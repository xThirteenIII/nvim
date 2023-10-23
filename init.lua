-- launch contains a function that creates a table to pass to lazy.lua which loads lazy plugin manager
require "user.launch"
-- keymaps sets global leader
require "user.keymaps"
require "user.set"

-- Plugin tables
spec "plugins.telescope"
spec "plugins.rosepine"
spec "plugins.treesitter"
spec "plugins.undotree"
spec "plugins.lspzero"
spec "plugins.nvimcmp"
spec "plugins.lsp"
spec "plugins.mason"

-- This loads the plugin manager
require "user.lazy"

-- Set keymaps after all the plugins are loaded.
-- How to load them before?
require "user.keys"
require "user.colorscheme"
