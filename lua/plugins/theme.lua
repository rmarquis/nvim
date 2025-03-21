return {
    "EdenEast/nightfox.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require("nightfox").setup({
            -- config
            options = {
                transparent = true,
            },
        })
        -- setup must be called before loading
        vim.cmd("colorscheme nordfox")
    end,
}

