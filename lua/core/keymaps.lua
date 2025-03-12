-- [[ keymaps ]]
-- see `:help vim.keymap.set()`

local opts = { noremap = true, silent = true }

-- backspace
vim.keymap.set("i", "<S-Tab>", "<BS>", opts)

