vim.api.nvim_exec([[
augroup FormatAutoGroup
	autocmd!
	autocmd BufWritePost *.js,*.py,*.json,*.html,*.yaml,*.svelte,*ts,*cpp,*c,*css FormatWrite
augroup END
]], true)
