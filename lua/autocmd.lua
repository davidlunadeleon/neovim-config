vim.api.nvim_exec([[
augroup FormatAutoGroup
	autocmd!
	autocmd BufWritePost *.js,*.py,*.json,*.html,*.yaml,*.svelte FormatWrite
augroup END
]], true)
