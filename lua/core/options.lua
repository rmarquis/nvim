-- [[ options ]]
-- see `:help vim.opt` and `:help option-list`

-- line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- line
vim.opt.wrap = false
vim.opt.linebreak = true

-- tabs
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

-- indentation
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.breakindent = true

-- search
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.inccommand = "split"

-- whitespace
vim.opt.list = true
vim.opt.listchars = {
    eol = " ",
    space = " ",
    tab = "▸ ",
    lead = " ",
    trail = "·",
    extends = "→",
    precedes = "←",
    conceal = "┊",
    nbsp = "␣",
}

-- appearance
vim.opt.colorcolumn = "120"
vim.opt.signcolumn = "yes"
vim.opt.cmdheight = 1
vim.opt.completeopt = "menuone,noinsert,noselect"
vim.opt.termguicolors = true
vim.opt.scrolloff = 4
vim.opt.sidescrolloff = 8
vim.opt.showtabline = 1

-- behaviour
vim.opt.showmode = true
vim.opt.hidden = true
vim.opt.errorbells = true
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = vim.fn.expand("~/.cache/nvim/undodir")
vim.opt.undofile = true
vim.opt.backspace = "indent,eol,start"
vim.opt.updatetime = 250
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.autochdir = false
vim.opt.modifiable = true
vim.opt.timeoutlen = 300
vim.opt.encoding = "UTF-8"

-- clipboard - schedule setting after 'UiEnter' to decrease startup-time
vim.schedule(function()
    vim.opt.clipboard = "unnamedplus"
end)

-- cursor
vim.opt.cursorline = true
vim.opt.guicursor:append("a:blinkon1")
vim.opt.mouse = "a"

