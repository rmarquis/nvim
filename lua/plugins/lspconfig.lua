return {
    {
        "williamboman/mason.nvim",
        event = "BufReadPre",
        --  lazy = false,
        config = function()
            require("mason").setup({
                -- config
                ui = {
                    icons = {
                        package_installed = "✓",
                        package_pending = "➜",
                        package_uninstalled = "✗",
                    },
                },
            })
        end,
        cmd = "Mason",
    },
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = {
            "williamboman/mason.nvim",
        },
        event = "BufReadPre",
        -- lazy = false,
        config = function()
            require("mason-lspconfig").setup({
                -- config
                ensure_installed = {
                    "lua_ls",
                    "pylsp",
                    "ruff_lsp",
                    "zls",
                },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            -- Setup language servers
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({
                settings = {
                    Lua = {
                        diagnostics = {
                            -- get the ls to recognize the 'vim' global
                            globals = { "vim" },
                        },
                    },
                },
                capabilities = capabilities,
            })
            lspconfig.pylsp.setup({
                capabilities = capabilities,
            })
            lspconfig.ruff_lsp.setup({
                init_options = {
                    settings = {
                        args = {},
                    },
                },
                capabilities = capabilities,
            })
            lspconfig.zls.setup({})

            -- Use LspAttach autocommand to only map the following keys
            -- after the language server attaches to the current buffer
            local map = vim.keymap.set
            vim.api.nvim_create_autocmd("LspAttach", {
                group = vim.api.nvim_create_augroup("UserLspConfig", {}),
                callback = function(ev)
                    -- diagnostic
                    -- See `:help vim.diagnostic.*` for documentation on any of the below functions
                    map("n", "<leader>s", vim.diagnostic.open_float, { buffer = ev.buf, desc = "Server" })
                    map("n", "<leader>sd", vim.diagnostic.open_float, { buffer = ev.buf, desc = "Diagnostics" })
                    map("n", "]d", vim.diagnostic.goto_next, { buffer = ev.buf, desc = "Next diagnostic" })
                    map("n", "[d", vim.diagnostic.goto_prev, { buffer = ev.buf, desc = "Prev diagnostic" })

                    -- Buffer local mappings
                    -- See `:help vim.lsp.*` for documentation on any of the below functions
                    map("n", "<leader>sD", vim.lsp.buf.declaration, { buffer = ev.buf, desc = "Go to declaration" })
                    map("n", "<leader>sd", vim.lsp.buf.definition, { buffer = ev.buf, desc = "Go to definition" })
                    map("n", "<leader>sf", vim.lsp.buf.format, { buffer = ev.buf, desc = "Format" })
                    map("n", "<leader>sk", vim.lsp.buf.hover, { buffer = ev.buf, desc = "Display hover information" })
                    map(
                        "n",
                        "<leader>sI",
                        vim.lsp.buf.implementation,
                        { buffer = ev.buf, desc = "Go to implementation" }
                    )
                    map(
                        "n",
                        "<leader>sK",
                        vim.lsp.buf.signature_help,
                        { buffer = ev.buf, desc = "Display signature help" }
                    )
                    map({ "n", "v" }, "<leader>sc", vim.lsp.buf.code_action, { buffer = ev.buf, desc = "Code action" })
                    map(
                        "n",
                        "<leader>st",
                        vim.lsp.buf.type_definition,
                        { buffer = ev.buf, desc = "Go to type definition" }
                    )
                    map("n", "<leader>sR", vim.lsp.buf.references, { buffer = ev.buf, desc = "Go to references" })
                    map("n", "<leader>sr", vim.lsp.buf.rename, { buffer = ev.buf, desc = "Rename" })
                    -- workspace
                    -- map('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, opts)
                    -- map('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, opts)
                    -- map('n', '<leader>wl', function()
                    --     print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
                    -- end, opts)
                end,
            })
        end,
    },
}
