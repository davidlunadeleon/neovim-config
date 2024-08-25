return {
	'nvim-treesitter/nvim-treesitter',
	build = function()
		require('nvim-treesitter.install').update({ with_sync = true })()
	end,
	config = function()
		require('nvim-dap-repl-highlights').setup {}
		local configs = require('nvim-treesitter.configs')
		configs.setup({
			ensure_installed = {
				'c',
				'c_sharp',
				'cpp',
				'css',
				'csv',
				'gdscript',
				'html',
				'javascript',
				'json',
				'lua',
				'python',
				'svelte',
				'tsx',
				'typescript',
				'vim',
				'vimdoc',
				'yaml',
				'dap_repl'
			},
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end
}
