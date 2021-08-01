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

-- barbar.nvim mappings

-- Move tab left or right
map('n', '<A-<>', '<cmd>:BufferMovePrevious<cr>', { silent = true })
map('n', '<A->>', '<cmd>:BufferMoveNext<cr>', { silent = true })

-- Move to buffer in position...
map('n', '<A-1>', '<cmd>:BufferGoto 1<cr>', { silent = true })
map('n', '<A-2>', '<cmd>:BufferGoto 2<cr>', { silent = true })
map('n', '<A-3>', '<cmd>:BufferGoto 3<cr>', { silent = true })
map('n', '<A-4>', '<cmd>:BufferGoto 4<cr>', { silent = true })
map('n', '<A-5>', '<cmd>:BufferGoto 5<cr>', { silent = true })
map('n', '<A-6>', '<cmd>:BufferGoto 6<cr>', { silent = true })
map('n', '<A-7>', '<cmd>:BufferGoto 7<cr>', { silent = true })
map('n', '<A-8>', '<cmd>:BufferGoto 8<cr>', { silent = true })
map('n', '<A-9>', '<cmd>:BufferGotoLast<cr>', { silent = true })

-- Close buffer
map('n', '<A-c>', '<cmd>:BufferClose<cr>', {silent = true })
