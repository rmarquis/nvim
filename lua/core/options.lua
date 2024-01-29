-- Set options
-- See :help vim.om :set all, :options

-- set shortcut
local opt = vim.opt

-- tabs and indentation
opt.expandtab = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.autoindent = true
opt.smartindent = true
opt.breakindent = true
opt.wrap = false

-- search
opt.hlsearch = false
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true

-- appearance
opt.number = true
opt.relativenumber = true
opt.list = true
vim.opt.listchars = {
    eol = " ",
    space = "·",
    tab = "▸ ",
    trail = "·",
    extends = "→",
    precedes = "←",
    nbsp = "␣",
}
opt.colorcolumn = '100'
opt.signcolumn = "yes"
opt.cmdheight = 1
opt.scrolloff = 10
opt.completeopt = "menuone,noinsert,noselect"
opt.termguicolors = true

-- behaviour
opt.hidden = true
opt.errorbells = true
opt.swapfile = false
opt.backup = false
opt.undodir = vim.fn.expand("~/.vim/undodir")
opt.undofile = true
opt.backspace = "indent,eol,start"
opt.splitright = true
opt.splitbelow = false
opt.autochdir = false
opt.iskeyword = "-"
opt.modifiable = true
opt.encoding = "UTF-8"

-- cursor
opt.cursorline = true
opt.guicursor:append("a:blinkon1")
opt.mouse = 'a'
opt.clipboard = "unnamedplus"
