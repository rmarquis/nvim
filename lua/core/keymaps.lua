-- [[ keymaps ]]
-- see `:help vim.keymap.set()`

-- for conciseness
local opts = { noremap = true, silent = true }

-- backspace
vim.keymap.set("i", "<S-Tab>", "<BS>", opts)

