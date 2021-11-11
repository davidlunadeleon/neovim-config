local function setup(opts)
	for opt, value in pairs(opts) do
		if type(value) == 'boolean' then
			value = value and 1 or 0
		end
		vim.g['nvim_tree_' .. opt] = value
	end
end

setup({
	gitignore = false,
	highlight_opened_files = true,
	group_empty = false,
	icon_padding = ' ',
	window_picker_exclude = {
		filetype = {
			'packer'
		},
		buftype = {
			'terminal'
		}
	}
})

require('nvim-tree').setup({
	view = {
		width = '15%',
		side = 'left',
		auto_resize = true,
	},
	auto_close = true,
	diagnostics = {
		enable = true,
	},
	update_to_buf_dir = {
		enable = true,
		auto_open = true,
	},
	update_focused_file = {
		enable = true,
	},
	open_on_tab = true,
	filters = {
		custom = {'.git', 'noode_modules', '.cache'},
	},
})
