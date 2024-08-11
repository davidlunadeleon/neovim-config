return {
	'nvim-telescope/telescope.nvim', 
	tag = '0.1.8',
	dependencies = {
		'nvim-lua/plenary.nvim',
	},
	keys = {
		{ '<leader>ft', '<cmd>:Telescope<cr>', desc = 'Telescope' },
		{ '<leader>ff', '<cmd>:Telescope find_files<cr>', desc = 'Telescope find files' },
		{ '<leader>fg', '<cmd>:Telescope live_grep<cr>', desc = 'Telescope live grep' },
	},
}

