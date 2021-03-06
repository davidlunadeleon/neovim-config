require('nvim-autopairs').setup({
	check_ts = true,
	enable_check_bracket_line = false,
	fast_wrap = {
		map = '<M-e>', -- do in insert mode
		chars = { '{', '[', '(', '"', "'" },
		pattern = string.gsub([[ [%'%"%)%>%]%)%}%,] ]], '%s+', ''),
		end_key = '$',
		keys = 'qwertyuiopzxcvbnmasdfghjkl',
		check_comma = true,
		hightlight = 'Search'
	}
})

