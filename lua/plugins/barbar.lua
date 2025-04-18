return {
	'romgrk/barbar.nvim',
	lazy = false,
	dependencies = {
		'lewis6991/gitsigns.nvim',
		'nvim-tree/nvim-web-devicons',
	},
	init = function() vim.g.barbar_auto_setup = false end,
	opts = {},
	keys = {
		{ "<C-PageUp>",     "<cmd>BufferPrevious<cr>",     desc = "Go to previous tab." },
		{ "<C-PageDown>",   "<cmd>BufferNext<cr>",         desc = "Go to next tab." },
		{ "<C-S-PageUp>",   "<cmd>BufferMovePrevious<cr>", desc = "Move current tab to the left." },
		{ "<C-S-PageDown>", "<cmd>BufferMoveNext<cr>",     desc = "Move current tab to the right." },
		{ "<C-w>",          "<cmd>BufferClose<cr>",        desc = "Close the current tab." },
		{ "<C-p>",          "<cmd>BufferPick<cr>",         desc = "Pick a tab to jump to." },
		{ "<A-w>",          "<cmd>BufferPickDelete<cr>",   desc = "Pick a tab to close." },
	}
}
