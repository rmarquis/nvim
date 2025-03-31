return {
    "nvimdev/dashboard-nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event = "VimEnter",
    config = function()
        require("dashboard").setup({
            -- config
            theme = "hyper",
            shuffle_letter = "true",
            config = {
                week_header = {
                    enable = true,
                },
                shortcut = {
                    { icon = "📝 ", desc = "New", group = "@property", action = "ene | startinsert", key = "n" },
                    { icon = "🔭 ", desc = "File", group = "@property", action = "Telescope find_files", key = "f" },
                    { icon = "🔎 ", desc = "Text", group = "@property", action = "Telescope live_grep", key = "g" },
                    { icon = "⌛ ", desc = "Recent", group = "@property", action = "Telescope oldfiles", key = "r" },
                    { icon = "💤 ", desc = "Lazy", group = "@property", action = "Lazy", key = "l" },
                    { icon = "🧱 ", desc = "Mason", group = "@property", action = "Mason", key = "m" },
                    { icon = "🛟 ", desc = "Help", group = "@property", action = "Telescope help_tags", key = "h" },
                    { icon = "🚪 ", desc = "Quit", group = "@property", action = "qa", key = "q" },
                },
                project = {
                    icon = "🏗️",
                },
                mru = {
                    icon = "🗃️"
                },
            },
        })
    vim.keymap.set({ "n", "v" }, "<leader>d", "<cmd>Dashboard<CR>", { desc = "Dashboard" })
    end,
}

