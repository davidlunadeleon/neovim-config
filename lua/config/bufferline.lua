require('bufferline').setup({
	options = {
		numbers = function (opts)
			return opts.ordinal
		end,

		-- LSP diagnostics
		diagnostics = "nvim_lsp",
		diagnostics_indicator = function(count, level, diagnostics_dict, context)
			local s = " "
			for e, n in pairs(diagnostics_dict) do
				local sym = e == "error" and " "
					or (e == "warning" and " " or "ⓘ" )
				s = s .. n .. sym
			end
			return s
		end,

		enforce_regular_tabs = true,
		always_show_bufferline = true,
		separator_style = 'slant',
		show_tab_indicators = true,
		offsets = {
			{
				filetype = 'NvimTree',
				text = 'File explorer',
				highlight = 'Directory',
				text_align = 'left'
			}
		}
	}
})

