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
		'nvim-telescope/telescope.nvim',
		requires = {{'nvim-lua/plenary.nvim'}}
	}
	use {
		'windwp/nvim-autopairs',
		config = [[require('config.autopairs')]]
	}
	use 'windwp/nvim-ts-autotag'
	use 'kyazdani42/nvim-web-devicons'
	use 'p00f/nvim-ts-rainbow'
	use {
		'nvim-lualine/lualine.nvim',
		requires = {'kyazdani42/nvim-web-devicons', opt = true},
		config = [[require('config.lualine')]]
	}
	use {
		'lukas-reineke/indent-blankline.nvim',
		config = [[require('config.indent-blankline')]]
	}
	use {
		'akinsho/bufferline.nvim',
		tag = 'v2.*',
		requires = {
			'kyazdani42/nvim-web-devicons'
		},
		config = [[require('config.bufferline')]]
	}
	use {
		'kyazdani42/nvim-tree.lua',
		requires = {
			'kyazdani42/nvim-web-devicons'
		},
		config = [[require('config.nvim-tree')]]
	}
	use 'famiu/bufdelete.nvim'
	use {
		'windwp/nvim-projectconfig',
		config = [[require('config.nvim-projectconfig')]]
	}
	use {
		'mhartington/formatter.nvim',
		config = [[require('config.formatter')]]
	}
	use {
		'nvim-neorg/neorg',
		config = [[require('config.neorg')]]
	}
end,
config = {
	display = {
		open_fn = require('packer.util').float
    }
}})

