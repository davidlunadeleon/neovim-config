require('formatter').setup({
	filetype = {
		javascript = {require("formatter.filetypes.javascript").prettier},
		json = {require("formatter.filetypes.json").prettier},
		html = {require("formatter.filetypes.html").prettier},
		yaml = {require("formatter.filetypes.yaml").prettier},
		python = {require("formatter.filetypes.python").black},
		svelte = {require("formatter.filetypes.svelte").prettier},
		["*"] = {
			require("formatter.filetypes.any").remove_trailing_whitespace
		}
	}
})
