return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    config = function()
        require('nvim-treesitter.configs').setup {
            -- config
            ensure_installed = { "c", "lua", "vim", "vimdoc", "query" },
            sync_install = false,
            auto_install = false,
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
            indent = {
                enable = true,
            },
        }
    end,
    build = ':TSUpdate',
}
