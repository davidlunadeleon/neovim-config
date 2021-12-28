vim.api.nvim_exec([[
augroup FormatAutoGroup
	autocmd!
	autocmd BufWritePost *.js FormatWrite
augroup END
]], true)
