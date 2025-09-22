-- [[ autocommands ]]
-- see `:help lua-guide-autocommands`

-- Clear terminal when exiting Neovim
vim.api.nvim_create_autocmd("VimLeave", {
    pattern = "*",
    command = "!clear",
})

-- Highlight when yanking text
-- see `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight when yanking text",
    group = vim.api.nvim_create_augroup("YankHighlight", { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})
