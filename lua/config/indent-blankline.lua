vim.cmd [[highlight IndentOne guifg=#BF616A guibg=NONE gui=nocombine]]
vim.cmd [[highlight IndentTwo guifg=#D08770 guibg=NONE gui=nocombine]]
vim.cmd [[highlight IndentThree guifg=#EBCB8B guibg=NONE gui=nocombine]]
vim.cmd [[highlight IndentFour guifg=#A3BE8C guibg=NONE gui=nocombine]]
vim.cmd [[highlight IndentFive guifg=#5E81AC guibg=NONE gui=nocombine]]
vim.cmd [[highlight IndentSix guifg=#88C0D0 guibg=NONE gui=nocombine]]
vim.cmd [[highlight IndentSeven guifg=#B48EAD guibg=NONE gui=nocombine]]

require('indent_blankline').setup({
show_end_of_line = true,
space_char_blankline = " ",
	char_highlight_list = {
		"IndentOne", "IndentTwo", "IndentThree", "IndentFour", "IndentFive",
		"IndentSix", "IndentSeven"
	},
	char = "│",
	show_first_indent_level = true,
	filetype_exclude = { "NvimTree", "help", "vimwiki", "packer" },
	buftype_exclude = {"terminal" },
	show_trailing_blankline_indent = false,
	show_current_context = true,
	context_patterns = {
		"class", "function", "method", "block", "list_literal", "selector",
		"^if", "^table", "if_statement", "while", "for"
	},
})
