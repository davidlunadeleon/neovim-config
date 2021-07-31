-- Load config
local modules = {
	"options"
}

for i = 1, #modules, 1 do
	pcall(require, modules[i])
end
