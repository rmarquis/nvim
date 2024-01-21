-- Set Lazy package manager
-- See :help lazy.nvim.txt
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'

if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- source core files
require('core.globals')
require('core.options')
require('core.keymaps')
require('core.autocmds')

local plugins = "plugins"

local opts = {
    defaults = {
        lazy = true,
    },
    install = {
        colorscheme = { "nordfox" },
    },
}

require('lazy').setup(plugins, opts)
