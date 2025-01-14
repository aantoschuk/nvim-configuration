 -- enable line number and relative number
vim.opt.nu = true
vim.opt.relativenumber = true

-- set tab as 4 spaces
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- auto indent based on the syntax
vim.opt.smartindent = true

-- do not wrap line if it's too long
vim.opt.wrap = false

-- backup, swap and undo 
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

--  do not highlight searched word and make it incremental
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- add more colors to support theme
vim.opt.termguicolors = true

--  set isfname and column sign
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

-- how often nvim checks for background updates ( auto-completion etc )
vim.opt.updatetime = 50

-- set column to be 80 character width
vim.opt.colorcolumn = "80"

-- shet leader button to space aka " "
vim.g.mapleader = " "

