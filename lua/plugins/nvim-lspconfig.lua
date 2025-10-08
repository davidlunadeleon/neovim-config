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
		vim.lsp.config('eslint', {
			on_attach = function(client, bufnr)
				vim.api.nvim_create_autocmd("BufWritePre", {
					buffer = bufnr,
					command = 'EslintFixAll',
				})
			end,
		})
		vim.lsp.enable('eslint')
		vim.lsp.enable('gdscript')
		vim.lsp.enable('lua_ls')
		vim.lsp.enable('pyright')
		vim.lsp.enable('svelte')
		vim.lsp.enable('ts_ls')
	end,
	keys = {
		{ 'gtd', '<cmd>:lua vim.lsp.buf.declaration()<cr>',    desc = 'Go to declaration' },
		{ 'gtD', '<cmd>:lua vim.lsp.buf.definition()<cr>',     desc = 'Go to definition' },
		{ 'bh',  '<cmd>:lua vim.lsp.buf.hover()<cr>',          desc = 'Hover' },
		{ 'sh',  '<cmd>:lua vim.lsp.buf.signature_help()<cr>', desc = 'Signature help' },
		{ 'gr',  '<cmd>:lua vim.lsp.buf.references()<cr>',     desc = 'Get references' },
		{ 'dof', '<cmd>:lua vim.diagnostic.open_float()<cr>',  desc = 'Diagnostic open float' },
		{ 'dgp', '<cmd>:lua vim.diagnostic.goto_prev()<cr>',   desc = 'Diagnostic goto prev' },
		{ 'dgn', '<cmd>:lua vim.diagnostic.goto_next()<cr>',   desc = 'Diagnostic goto next' },
	}
}
