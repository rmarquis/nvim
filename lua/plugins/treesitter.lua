return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ':TSUpdate',
    config = function()
        require('nvim-treesitter.configs').setup {
            -- config
            ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" },
            sync_install = false,
            auto_install = true,
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
            indent = {
                enable = true,
            },
        }
    end,
}

