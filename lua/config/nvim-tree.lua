require('nvim-tree').setup({
	view = {
		width = '15%',
		side = 'left',
	},
	diagnostics = {
		enable = true,
	},
	hijack_directories = {
		enable = true,
		auto_open = true,
	},
	update_focused_file = {
		enable = true,
	},
	open_on_tab = true,
	filters = {
		custom = {'node_modules', '.cache'},
	},
	git = {
		ignore = false
	},
	actions = {
		open_file = {
			window_picker = {
				exclude = {
					filetype = {'packer'},
					buftype = {'terminal'}
				}
			},
			resize_window = true
		}
	},
	renderer = {
		group_empty = false,
		highlight_opened_files = "all",
		icons = {
			padding = " ",
		},
	}
})
