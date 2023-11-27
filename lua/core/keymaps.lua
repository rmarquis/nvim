-- Set <space> as the leader key
-- See :help mapleader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- set shortcut
local map = vim.keymap.set

-- lazy
map("n", "<leader>l", "<cmd>Lazy<cr>", { desc = "Lazy" })

