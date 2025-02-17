return {
    "mrjones2014/smart-splits.nvim",
    lazy = false,
    config = function()
        require("smart-splits").setup({
            default_amount = 1,
            at_edge = "stop",
            cursor_follows_swapped_bufs = true,
        })
    end,
}
