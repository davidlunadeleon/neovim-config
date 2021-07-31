local execute = vim.api.nvim_command
local fn = vim.fn

-- Bootstrap packer

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

local use = require('packer').use
require('packer').startup({function()
    use 'wbthomason/packer.nvim' -- Package manager
    use 'shaunsingh/nord.nvim' -- Nord theme
end,
config = {
    display = {
        open_fn = require('packer.util').float
    }
}})
