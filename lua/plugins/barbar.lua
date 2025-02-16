return {
    "romgrk/barbar.nvim",
    lazy = false,
    dependencies = {
        "lewis6991/gitsigns.nvim",
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        require("barbar").setup({
            -- config
            auto_hide = 1,
        })
        -- disable auto-setup
        vim.g.barbar_auto_setup = false
    end,
}
