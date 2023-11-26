return {
    "EdenEast/nightfox.nvim",
    priority = 1000,
    config = function()
        -- default options override
        require('nightfox').setup {
            -- config
        }
        -- setup must be called before loading
        vim.cmd("colorscheme nightfox")
    end
}

