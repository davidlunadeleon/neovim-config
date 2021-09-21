local function setup(opts)
	for opt, value in pairs(opts) do
		if type(value) == 'boolean' then
			value = value and 1 or 0
		end
		vim.g['nvim_tree_' .. opt] = value
	end
end

setup({
	side = 'left',
	ignore = {'.git', 'noode_modules', '.cache'},
	gitignore = true,
	auto_open = true,
	auto_close = true,
	follow = true,
	highlight_opened_files = true,
	tap_open = true,
	group_empty = false,
	auto_resize = true,
	lsp_diagnostics = true,
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
