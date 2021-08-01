-- Treesitter configuration
-- Parsers must be installed manually via :TSInstall
require('nvim-treesitter.configs').setup {
	ensure_installed = {
		'bash',
		'c',
		'cmake',
		'comment',
		'cpp',
		'css',
		'dockerfile',
		'gdscript',
		'go',
		'graphql',
		'haskell',
		'html',
		'javascript',
		'json',
		'latex',
		'python',
		'regex',
		'ruby',
		'rust',
		'svelte',
		'typescript',
	},
	highlight = {
		enable = true -- false will disable the whole extension
	},
	indent = {
		enable = true
	},
	autopairs = {
		enable = true
	},
	autotag = {
		enable = true
	},
	rainbow = {
		enable = true,
		extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
	}
}

