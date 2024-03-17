return {
    "nvim-tree/nvim-tree.lua",
    dependencies = {{'nvim-tree/nvim-web-devicons'}},
    lazy = false,
    config = function()
        require('nvim-tree').setup {
            -- config
            sort = {
                sorter = "case_sensitive",
            },
            view = {
                adaptive_size = true,
            }
            ,
            renderer = {
                group_empty = true,
            },
            filters = {
                dotfiles = true,
            },
        }
    end,
}
