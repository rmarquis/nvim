-- Set keymaps
-- See :help vim.keymap

-- set shortcut
local map = vim.keymap.set

-- quit
map("n", "<leader>q", "<cmd>qa<CR>", { desc = "Quit" })

-- lazy
map("n", "<leader>l", "<cmd>Lazy<CR>", { desc = "Lazy" })

-- general
map("i", "<S-Tab>", "<BS>", { desc = "Backspace" })

-- dashboard
map("n", "<leader>d", "<cmd>Dashboard<CR>", { desc = "Dashboard" })

-- neotree
map("n", "<leader>e", "<cmd>Neotree filesystem reveal left<CR>", { desc = "Explorer" })

-- telescope
map("n", "<leader>f", "<cmd>Telescope<CR>", { desc = "Telescope" })
map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Find file" })
map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "Find text" })
map("n", "<leader>fr", "<cmd>Telescope oldfiles<CR>", { desc = "Find recent" })
map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "Find help" })
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "Find buffer" })

map("n", "<leader>g", "<cmd>Telescope<CR>", { desc = "Git" })
map("n", "<leader>gf", "<cmd>Telescope git_files<CR>", { desc = "Git files" })
map("n", "<leader>gb", "<cmd>Telescope git_branches<CR>", { desc = "Git branches" })
map("n", "<leader>gc", "<cmd>Telescope git_commits<CR>", { desc = "Git commits" })
map("n", "<leader>gs", "<cmd>Telescope git_status<CR>", { desc = "Git status" })
map("n", "<leader>gt", "<cmd>Telescope git_stash<CR>", { desc = "Git stash" })

map("n", "<leader>m", "<cmd>Mason<CR>", { desc = "Mason" })

-- move between splits
-- these keymaps will also accept a range,
-- for example `10<A-h>` will `resize_left` by `(10 * config.default_amount)`
map("n", "<C-h>", "<cmd>SmartCursorMoveLeft<CR>", { noremap = true, silent = true, desc = "Move cursor left" })
map("n", "<C-j>", "<cmd>SmartCursorMoveDown<CR>", { noremap = true, silent = true, desc = "Move cursor down" })
map("n", "<C-k>", "<cmd>SmartCursorMoveUp<CR>", { noremap = true, silent = true, desc = "Move cursor up" })
map("n", "<C-l>", "<cmd>SmartCursorMoveRight<CR>", { noremap = true, silent = true, desc = "Move cursor right" })
-- resize splits
map("n", "<A-h>", "<cmd>SmartResizeLeft<CR>", { noremap = true, silent = true, desc = "Resize split left" })
map("n", "<A-j>", "<cmd>SmartResizeDown<CR>", { noremap = true, silent = true, desc = "Resize split down" })
map("n", "<A-k>", "<cmd>SmartResizeUp<CR>", { noremap = true, silent = true, desc = "Resize split up" })
map("n", "<A-l>", "<cmd>SmartResizeRight<CR>", { noremap = true, silent = true, desc = "Resize split right" })
-- swap buffers between windows
map("n", "<C-A-h>", "<cmd>SmartSwapLeft<CR>", { noremap = true, silent = true, desc = "Swap buffer left" })
map("n", "<C-A-j>", "<cmd>SmartSwapDown<CR>", { noremap = true, silent = true, desc = "Swap buffer down" })
map("n", "<C-A-k>", "<cmd>SmartSwapUp<CR>", { noremap = true, silent = true, desc = "Swap buffer up" })
map("n", "<C-A-l>", "<cmd>SmartSwapRight<CR>", { noremap = true, silent = true, desc = "Swap buffer right" })

-- move to buffer
map("n", "<A-,>", "<cmd>BufferPrevious<CR>", { noremap = true, silent = true, desc = "Move to previous buffer" })
map("n", "<A-.>", "<cmd>BufferNext<CR>", { noremap = true, silent = true, desc = "Move to next buffer" })
-- re-order buffer
map(
    "n",
    "<A-<>",
    "<cmd>BufferMovePrevious<CR>",
    { noremap = true, silent = true, desc = "Re-order to previous tbuffer" }
)
map("n", "<A->>", "<cmd>BufferMoveNext<CR>", { noremap = true, silent = true, desc = "Re-order to next buffer" })
-- go to buffer
map("n", "<A-1>", "<cmd>BufferGoto 1<CR>", { noremap = true, silent = true, desc = "Go to buffer in position 1" })
map("n", "<A-2>", "<cmd>BufferGoto 2<CR>", { noremap = true, silent = true, desc = "Go to buffer in position 2" })
map("n", "<A-3>", "<cmd>BufferGoto 3<CR>", { noremap = true, silent = true, desc = "Go to buffer in position 3" })
map("n", "<A-4>", "<cmd>BufferGoto 4<CR>", { noremap = true, silent = true, desc = "Go to buffer in position 4" })
map("n", "<A-5>", "<cmd>BufferGoto 5<CR>", { noremap = true, silent = true, desc = "Go to buffer in position 5" })
map("n", "<A-6>", "<cmd>BufferGoto 6<CR>", { noremap = true, silent = true, desc = "Go to buffer in position 6" })
map("n", "<A-7>", "<cmd>BufferGoto 7<CR>", { noremap = true, silent = true, desc = "Go to buffer in position 7" })
map("n", "<A-8>", "<cmd>BufferGoto 8<CR>", { noremap = true, silent = true, desc = "Go to buffer in position 8" })
map("n", "<A-9>", "<cmd>BufferGoto 9<CR>", { noremap = true, silent = true, desc = "Go to buffer in position 9" })
map("n", "<A-0>", "<cmd>BufferLast<CR>", { noremap = true, silent = true, desc = "Go to buffer in last position" })
-- pin and unpin buffer
map("n", "<A-p>", "<cmd>BufferPin<CR>", { noremap = true, silent = true, desc = "Pin or unpin buffer" })
-- close and restore buffer
map("n", "<A-c>", "<cmd>BufferClose<CR>", { noremap = true, silent = true, desc = "Close buffer" })
map("n", "<A-S-c>", "<cmd>BufferRestore<CR>", { noremap = true, silent = true, desc = "Restore buffer" })
