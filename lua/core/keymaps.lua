-- Set <space> as the leader key
-- See :help mapleader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- set shortcut
local map = vim.keymap.set

-- lazy
map("n", "<leader>l", "<cmd>Lazy<cr>", { desc = "Lazy" })

-- move between splits
-- these keymaps will also accept a range,
-- for example `10<A-h>` will `resize_left` by `(10 * config.default_amount)`
map('n', '<C-h>', "<cmd>SmartCursorMoveLeft<CR>", { noremap = true, silent = true, desc = "Move cursor left" })
map('n', '<C-j>', "<cmd>SmartCursorMoveDown<CR>", { noremap = true, silent = true, desc = "Move cursor down" })
map('n', '<C-k>', "<cmd>SmartCursorMoveUp<CR>", { noremap = true, silent = true, desc = "Move cursor up" })
map('n', '<C-l>', "<cmd>SmartCursorMoveRight<CR>", { noremap = true, silent = true, desc = "Move cursor right" })
-- resize splits
map('n', '<A-h>', "<cmd>SmartResizeLeft<CR>", { noremap = true, silent = true, desc = "Resize split left" })
map('n', '<A-j>', "<cmd>SmartResizeDown<CR>", { noremap = true, silent = true, desc = "Resize split down" })
map('n', '<A-k>', "<cmd>SmartResizeUp<CR>", { noremap = true, silent = true, desc = "Resize split up" })
map('n', '<A-l>', "<cmd>SmartResizeRight<CR>", { noremap = true, silent = true, desc = "Resize split right" })
-- swap buffers between windows
map('n', '<C-A-h>', "<cmd>SmartSwapLeft<CR>", { noremap = true, silent = true, desc = "Swap buffer left" })
map('n', '<C-A-j>', "<cmd>SmartSwapDown<CR>", { noremap = true, silent = true, desc = "Swap buffer down" })
map('n', '<C-A-k>', "<cmd>SmartSwapUp<CR>", { noremap = true, silent = true, desc = "Swap buffer up" })
map('n', '<C-A-l>', "<cmd>SmartSwapRight<CR>", { noremap = true, silent = true, desc = "Swap buffer right" })

