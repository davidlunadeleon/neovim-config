local opt = vim.opt
local g = vim.g

-- List specific chars
opt.list = true
opt.listchars:append({
	space = '.',
	eol = '↴',
	tab = '<->',
})

-- General:
opt.termguicolors = true
opt.cul = true
opt.clipboard = "unnamedplus"
opt.scrolloff = 5
opt.linebreak = true
opt.wrap = true

-- Search:
opt.ignorecase = true
opt.smartcase = true

-- Numbers:
opt.number = true
opt.numberwidth = 4

-- Indentation:
opt.expandtab = false
opt.shiftwidth = 4
opt.tabstop = 4
opt.smartdindent = true

-- Set completeopt to have a better completion experience
opt.completeopt = 'menuone,noselect'
