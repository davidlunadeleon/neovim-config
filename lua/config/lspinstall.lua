require('lspinstall').setup()

local function setup_servers()
	require'lspinstall'.setup()
	local servers = require'lspinstall'.installed_servers()

	table.insert(servers, "cpp")
	table.insert(servers, "bash")
	table.insert(servers, "css")
	table.insert(servers, "dockerfile")
	table.insert(servers, "go")
	table.insert(servers, "haskell")
	table.insert(servers, "html")
	table.insert(servers, "json")
	table.insert(servers, "graphql")
	table.insert(servers, "python")
	table.insert(servers, "rust")
	table.insert(servers, "svelte")
	table.insert(servers, "typescript")

	for _, server in pairs(servers) do
		require'lspconfig'[server].setup{}
	end
end

setup_servers()

-- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim
require'lspinstall'.post_install_hook = function ()
	setup_servers() -- reload installed servers
	vim.cmd("bufdo e") -- this triggers the FileType autocmd that starts the server
end
