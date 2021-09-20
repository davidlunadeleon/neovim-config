local execute = vim.api.nvim_command
local fn = vim.fn

-- Bootstrap packer
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
	fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
	execute 'packadd packer.nvim'
end

-- Run PackerCompile when modifying plugins.lua
vim.cmd([[autocmd BufWritePost plugins.lua source <afile> | PackerCompile]])

local use = require('packer').use
require('packer').startup({function()
	use 'wbthomason/packer.nvim' -- Package manager
	use 'shaunsingh/nord.nvim' -- Nord theme
	use {
		'nvim-treesitter/nvim-treesitter',
		requires = {
			'nvim-treesitter/nvim-treesitter-refactor',
			'nvim-treesitter/nvim-treesitter-textobjects'
		},
		run = ':TSUpdate',
		config = [[require('config.treesitter')]]
	}
	use {
		'neovim/nvim-lspconfig', -- Configurations for the built-in LSP client
		config = [[require('config.lspconfig')]]
	}
	use 'hrsh7th/cmp-nvim-lsp'
	use {
		'hrsh7th/nvim-cmp', -- Autocompletion
		config = [[require('config.nvim-cmp')]]
	}
	use 'L3MON4D3/LuaSnip' -- Snippets
	use {
		'kabouzeid/nvim-lspinstall', -- Install LSPs for specified languages
		config = [[require('config.lspinstall')]]
	}
	use {
		'nvim-telescope/telescope.nvim',
		requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
	}
	use {
		'windwp/nvim-autopairs',
		config = [[require('config.autopairs')]]
	}
	use 'windwp/nvim-ts-autotag'
	use 'kyazdani42/nvim-web-devicons'
	use 'romgrk/barbar.nvim'
	use 'p00f/nvim-ts-rainbow'
	use {
		'glepnir/galaxyline.nvim',
		branch = 'main',
		config = [[require('config.galaxyline')]]
	}
	use {
		'lukas-reineke/indent-blankline.nvim',
		config = [[require('config.indent-blankline')]]
	}
end,
config = {
	display = {
		open_fn = require('packer.util').float
    }
}})

