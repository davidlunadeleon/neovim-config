return {
	"nvim-neotest/neotest",
	dependencies = {
		"nvim-neotest/nvim-nio",
		"nvim-lua/plenary.nvim",
		"antoinemadec/FixCursorHold.nvim",
		"nvim-treesitter/nvim-treesitter"
	},
	config = function()
		require('neotest').setup({
			adaptes = {
				require('neotest-python')({
					dap = { justMyCode = false }
				})
			}
		})
	end,
	keys = {
		{ 'trn', "<cmd>lua require'neotest'.run.run()<cr>",                   desc = "Run nearest test" },
		{ 'tdn', "<cmd>lua require'neotest'.run.run({strategy = 'dap'})<cr>", desc = "Debug nearest test" },
		{ 'tcf', "<cmd>lua require'neotest'.run.run(vim.fn.expand('%'))<cr>", desc = "Run current file" },
		{ 'tsn', "<cmd>lua require'neotest'.run.stop()<cr>",                  desc = "Stop nearest test" }
	}
}
