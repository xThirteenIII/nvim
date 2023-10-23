-- launch contains a function that creates a table to pass to lazy.lua which loads lazy plugin manager
require "user.launch"
-- keymaps sets global leader
require "user.keymaps"

-- Plugin tables
spec "plugins.telescope"

-- This must be last thing to do call
require "user.lazy"
