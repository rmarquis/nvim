-- [[ options ]]
-- see `:help vim.opt` and `:help option-list`

-- line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- line
vim.opt.wrap = false
vim.opt.linebreak = true

-- cursor
vim.opt.cursorline = true
vim.opt.guicursor:append("a:blinkon1")
vim.opt.mouse = "a"
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.clipboard:append("unnamedplus")

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
vim.opt.termguicolors = true
vim.opt.colorcolumn = "120"
vim.opt.signcolumn = "yes"
vim.opt.showmatch = true
vim.opt.cmdheight = 1
vim.opt.completeopt = "menuone,noinsert,noselect"
vim.opt.showtabline = 1
vim.opt.showmode = true
vim.opt.fillchars = { eob = " " }
vim.opt.pumheight = 10
vim.opt.pumblend = 10
vim.opt.winblend = 0
vim.opt.conceallevel = 0
vim.opt.concealcursor = ""
vim.opt.lazyredraw = true
vim.opt.synmaxcol = 300

-- behaviour
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false
vim.opt.undodir = vim.fn.expand("~/.cache/nvim/undodir")
vim.opt.undofile = true
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300
vim.opt.ttimeoutlen = 0
vim.opt.autoread = true
vim.opt.autowrite = false
vim.opt.modifiable = true
vim.opt.selection = "inclusive"
vim.opt.encoding = "UTF-8"
vim.opt.hidden = true
vim.opt.errorbells = true
vim.opt.backspace = "indent,eol,start"
vim.opt.autochdir = false
vim.opt.splitbelow = true
vim.opt.splitright = true

