vim.api.nvim_exec([[
augroup FormatAutoGroup
	autocmd!
	autocmd BufWritePost *.js,*.py,*.json,*.html,*.yaml FormatWrite
augroup END
]], true)
