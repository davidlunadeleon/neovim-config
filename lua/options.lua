local opt = vim.opt

-- List specific characters

opt.list = true
opt.listchars:append(
	{
		space = '.',
		eol = '↴',
		tab = '<->',
	}
)

-- General changes

opt.completeopt = 'menuone,noselect'
opt.cul = true
opt.linebreak = true
opt.scrolloff = 5
opt.termguicolors = true
opt.wrap = true

-- Search

opt.ignorecase = true
opt.smartcase = true

-- Line number
opt.number = true
opt.numberwidth = 4

-- Indentation
opt.shiftwidth = 4
opt.tabstop = 4
opt.smartindent = true

