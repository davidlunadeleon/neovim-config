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

-- Bufferline mappings

-- Move tab left or right
map('n', '<A-<>', '<cmd>:BufferLineMovePrev<cr>', { silent = true })
map('n', '<A->>', '<cmd>:BufferLineMoveNext<cr>', { silent = true })

-- Move to buffer in position...
map('n', '<A-1>', '<cmd>:BufferLineGoToBuffer 1<cr>', { silent = true })
map('n', '<A-2>', '<cmd>:BufferLineGoToBuffer 2<cr>', { silent = true })
map('n', '<A-3>', '<cmd>:BufferLineGoToBuffer 3<cr>', { silent = true })
map('n', '<A-4>', '<cmd>:BufferLineGoToBuffer 4<cr>', { silent = true })
map('n', '<A-5>', '<cmd>:BufferLineGoToBuffer 5<cr>', { silent = true })
map('n', '<A-6>', '<cmd>:BufferLineGoToBuffer 6<cr>', { silent = true })
map('n', '<A-7>', '<cmd>:BufferLineGoToBuffer 7<cr>', { silent = true })
map('n', '<A-8>', '<cmd>:BufferLineGoToBuffer 8<cr>', { silent = true })
map('n', '<A-9>', '<cmd>:BufferGotoLast<cr>', { silent = true })

-- Close buffer
map('n', '<A-c>', '<cmd>:BufferClose<cr>', {silent = true })

-- NvimTree mappings
map('n', '<C-n>', '<cmd>:NvimTreeToggle<cr>', {})

-- Telescope mappings
map('n', '<leader>ft', '<cmd>:Telescope<cr>', { silent = true })
map('n', '<leader>ff', '<cmd>:Telescope find_files<cr>', { silent = true })
map('n', '<leader>fg', '<cmd>:Telescope live_grep<cr>', { silent = true })
