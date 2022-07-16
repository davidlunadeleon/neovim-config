require('formatter').setup({
	filetype = {
		c = {require("formatter.filetypes.c").clangformat},
		cpp = {require("formatter.filetypes.cpp").clangformat},
		css = {require("formatter.filetypes.css").prettier},
		html = {require("formatter.filetypes.html").prettier},
		javascript = {require("formatter.filetypes.javascript").prettier},
		json = {require("formatter.filetypes.json").prettier},
		python = {require("formatter.filetypes.python").black},
		svelte = {require("formatter.filetypes.svelte").prettier},
		typescript = {require("formatter.filetypes.typescript").prettier},
		yaml = {require("formatter.filetypes.yaml").prettier},
		["*"] = {
			require("formatter.filetypes.any").remove_trailing_whitespace
		}
	}
})
