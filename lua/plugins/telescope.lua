return {
    {
        "nvim-telescope/telescope.nvim",
        branch = "0.1.x",
        lazy = false,
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        config = function()
            local builtin = require("telescope.builtin")
            require("telescope").setup()
        end,
    },
    {
        "nvim-telescope/telescope-ui-select.nvim",
        lazy = false,
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
        end,
    },
}
