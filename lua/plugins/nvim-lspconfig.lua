return {
	'neovim/nvim-lspconfig',
	lazy = false,
	dependencies = {
		{ 'ms-jpq/coq_nvim',       branch = 'coq' },
		{ 'ms-jpq/coq.artifacts',  branch = 'artifacts' },
		{ 'ms-jpq/coq.thirdparty', branch = '3p' },
	},
	init = function()
		vim.g.coq_settings = {
			auto_start = true,
			keymap = {
				jump_to_mark = '<c-m>'
			}
		}
	end,
	config = function()
		local lspconfig = require('lspconfig')
		lspconfig.lua_ls.setup {}
		lspconfig.eslint.setup({
			on_attach = function(client, bufnr)
				vim.api.nvim_create_autocmd("BufWritePre", {
					buffer = bufnr,
					command = 'EslintFixAll',
				})
			end,
		})
		lspconfig.tsserver.setup {}
		lspconfig.svelte.setup {}
	end,
}
