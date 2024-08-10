require('neorg').setup({
	load = {
		['core.defaults'] = {},
		['core.completion'] = {
			config = {
				engine = 'nvim-cmp'
			}
		},
		['core.concealer'] = {},
		['core.qol.toc'] = {},
		['core.journal'] = {}
	}
})
