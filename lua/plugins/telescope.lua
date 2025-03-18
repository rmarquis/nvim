return {
    {
        "nvim-telescope/telescope.nvim", branch = "0.1.x",
        dependencies = {
            "nvim-lua/plenary.nvim"
        },
        config = function()
            require('telescope.builtin')
            require("telescope").setup()
        end,
    },
    {
        "nvim-telescope/telescope-ui-select.nvim",
        event = "VimEnter",
        config = function()
            require("telescope").setup({
                -- config
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown({}),
                    },
                },
            require("telescope").load_extension("ui-select"),
            })
            vim.keymap.set("n", "<leader>f", "<cmd>Telescope<CR>", { desc = "Telescope" })
            vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Find file" })
            vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "Find text" })
            vim.keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<CR>", { desc = "Find recent" })
            vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "Find help" })
            vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "Find buffer" })
            vim.keymap.set("n", "<leader>g", "<cmd>Telescope<CR>", { desc = "Git" })
            vim.keymap.set("n", "<leader>gf", "<cmd>Telescope git_files<CR>", { desc = "Git files" })
            vim.keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<CR>", { desc = "Git branches" })
            vim.keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<CR>", { desc = "Git commits" })
            vim.keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<CR>", { desc = "Git status" })
            vim.keymap.set("n", "<leader>gt", "<cmd>Telescope git_stash<CR>", { desc = "Git stash" })
        end,
    }
}

