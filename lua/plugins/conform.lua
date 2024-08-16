return {
	'stevearc/conform.nvim',
	event = { 'BufWritePre' },
	cmd = { 'ConformInfo' },
	keys = {
		{
			'<leader>fo',
			function()
				require('conform').format({ async = true })
			end,
			mode = '',
			desc = 'Format buffer',
		}
	},
	opts = {
		formatters_by_ft = {
			javascript = { 'prettier' },
			typescript = { 'prettier' },
			typescriptreact = { 'prettier' },
		},
		format_on_save = {
			timeout_ms = 500,
			lsp_format = 'fallback',
		}
	}
}
