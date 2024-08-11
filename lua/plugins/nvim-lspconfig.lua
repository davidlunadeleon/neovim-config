return {
	'neovim/nvim-lspconfig',
	lazy = false,
	dependencies = {
		{ 'ms-jpq/coq_nvim', branch = 'coq' },
		{ 'ms-jpq/coq.artifacts', branch = 'artifacts' },
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

	end,
}
