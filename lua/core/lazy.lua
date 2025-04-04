-- [[ Lazy plugin manager ]]
-- see `:help lazy.nvim.txt`
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end
vim.opt.rtp:prepend(lazypath)

local plugins = "plugins"
local opts = {
    defaults = {
        lazy = true,
    },
    change_detection = {
        notify = false,
    },
    install = {
        colorscheme = { "nordfox" },
    },
}

require("lazy").setup(plugins, opts)

