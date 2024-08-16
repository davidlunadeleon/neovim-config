-- Load lazy.nvim

require("config.lazy")

-- Load config

local modules = {
	'mappings',
	'options',
}

for i = 1, #modules, 1 do
	pcall(require, modules[i])
end
