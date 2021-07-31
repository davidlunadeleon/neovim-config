local g = vim.g
local map = vim.api.nvim_set_keymap

g.mapleader = ' '

-- Disable F1 help binding.
map('', '<f1>', '<cmd><cr>', {})

-- Toggle numbers.
map('n', '<leader>n', '<cmd>set nu!<cr>', {})

-- Move between splits with ctrl + [hjkl]
map('n', '<c-h>', '<cmd>wincmd h<cr>', {})
map('n', '<c-j>', '<cmd>wincmd j<cr>', {})
map('n', '<c-k>', '<cmd>wincmd k<cr>', {})
map('n', '<c-l>', '<cmd>wincmd l<cr>', {})

-- Move between splits with ctrl + [left,down,up,right]
map('n', '<c-left>', '<cmd>wincmd h<cr>', {})
map('n', '<c-down>', '<cmd>wincmd j<cr>', {})
map('n', '<c-up>', '<cmd>wincmd k<cr>', {})
map('n', '<c-right>', '<cmd>wincmd l<cr>', {})
