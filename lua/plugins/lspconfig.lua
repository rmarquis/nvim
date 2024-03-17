return {
    {
        "williamboman/mason.nvim",
        event = "BufReadPre",
        --  lazy = false,
        config = function()
            require("mason").setup {
                -- config
                ui = {
                    icons = {
                        package_installed = "✓",
                        package_pending = "➜",
                        package_uninstalled = "✗"
                    }
                }
            }
        end,
        cmd = "Mason",
    },
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = {
            "williamboman/mason.nvim"
        },
        event = "BufReadPre",
        -- lazy = false,
        config = function()
            require("mason-lspconfig").setup {
                -- config
                ensure_installed = {
                    "lua_ls",
                }
            }
        end
    },
}
