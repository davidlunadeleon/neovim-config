require('formatter').setup({
	filetype = {
		javascript = {
			function()
				return {
					exe = "prettier",
					args = {"--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0))},
					stdin = true
				}
			end
		},
	}
})
