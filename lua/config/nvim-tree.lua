local function setup(opts)
	for opt, value in pairs(opts) do
		if type(value) == 'boolean' then
			value = value and 1 or 0
		end
		vim.g['nvim_tree_' .. opt] = value
	end
end

setup({
	highlight_opened_files = true,
	group_empty = false,
	icon_padding = ' ',
})

require('nvim-tree').setup({
	view = {
		width = '15%',
		side = 'left',
		auto_resize = true,
	},
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
			}
		}
	}
})
