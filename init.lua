-- Load config
local modules = {
    'options',
    'mappings',
    'commands',
    'plugins',
    'looks'
}

for i = 1, #modules, 1 do
	pcall(require, modules[i])
end
