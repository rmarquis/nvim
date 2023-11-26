-- Set options
-- See :help vim.om :set all, :options

-- tabs and indentation
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.breakindent = true
vim.opt.wrap = false

-- search
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- appearance
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.list = true
vim.opt.colorcolumn = '100'
vim.opt.signcolumn = "yes"
vim.opt.cmdheight = 1
vim.opt.scrolloff = 10
vim.opt.completeopt = "menuone,noinsert,noselect"
vim.opt.termguicolors = true

-- behaviour
vim.opt.hidden = true
vim.opt.errorbells = true
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = vim.fn.expand("~/.vim/undodir")
vim.opt.undofile = true
vim.opt.backspace = "indent,eol,start"
vim.opt.splitright = true
vim.opt.splitbelow = false
vim.opt.autochdir = false
vim.opt.iskeyword = "-"
vim.opt.modifiable = true
vim.opt.encoding = "UTF-8"

-- cursor
vim.opt.cursorline = true
vim.opt.guicursor:append("a:blinkon1")
vim.opt.mouse = 'a'
vim.opt.clipboard = "unnamedplus"

