-- [[ keymaps ]]
-- see `:help vim.keymap.set()`

-- for conciseness
local opts = { noremap = true, silent = true }

-- autocorrect
vim.cmd("cabbrev W w")
vim.cmd("cabbrev Wq wq")
vim.cmd("cabbrev Wq wq")
vim.cmd("cabbrev WQ wq")
vim.cmd("cabbrev Q q")
vim.cmd("cabbrev Q! q!")
vim.cmd("cabbrev Qa qa")
vim.cmd("cabbrev Qa! qa!")
vim.cmd("cabbrev QA qa")
vim.cmd("cabbrev QA! qa!")

-- backspace
vim.keymap.set("i", "<S-Tab>", "<BS>", opts)

-- clear highlights on search when pressing <Esc>
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- quit
vim.keymap.set("n", "<leader>q", "<cmd>qa<CR>", { desc = "Quit" })

-- lazy
vim.keymap.set("n", "<leader>l", "<cmd>Lazy<CR>", { desc = "Lazy" })

-- split navigation
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

