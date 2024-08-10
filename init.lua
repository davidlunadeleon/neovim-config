-- Load lazy.nvim
require("config.lazy")
-- Load config
local modules = {
	'options',
	'mappings',
	'commands',
	'looks',
	'autocmd'
}

for i = 1, #modules, 1 do
	pcall(require, modules[i])
end
