return {
    "nvim-telescope/telescope.nvim", branch = "0.1.x",
    dependencies = {
        "nvim-lua/plenary.nvim"
    },
    lazy = false,
    config = function()
        require('telescope.builtin')
        require('telescope').setup()
    end,
}

