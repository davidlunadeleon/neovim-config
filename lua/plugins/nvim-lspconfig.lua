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
		lspconfig.gdscript.setup {}
		lspconfig.pyright.setup {}
	end,
	keys = {
		{ 'gtd', '<cmd>:lua vim.lsp.buf.declaration()<cr>',    desc = 'Go to declaration' },
		{ 'gtD', '<cmd>:lua vim.lsp.buf.definition()<cr>',     desc = 'Go to definition' },
		{ 'bh',  '<cmd>:lua vim.lsp.buf.hover()<cr>',          desc = 'Hover' },
		{ 'sh',  '<cmd>:lua vim.lsp.buf.signature_help()<cr>', desc = 'Signature help' },
		{ 'gr',  '<cmd>:lua vim.lsp.buf.references()<cr>',     desc = 'Get references' },
		{ 'dof', '<cmd>:lua vim.diagnostic.open_float()<cr>',  desc = 'Diagnostic open float' },
		{ 'dgp', '<cmd>:lua vim.diagnostic.goto_prev()<cr>',   desc = 'Diagnostic goto prev' },
		{ 'dgn', '<cmd>:lua vim.diagnostic.goto_nex()<cr>',    desc = 'Diagnostic goto next' },
	}
}
