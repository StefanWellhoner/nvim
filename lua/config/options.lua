-- Window options
vim.wo.relativenumber = true
vim.wo.cursorline = true
vim.wo.signcolumn = "yes"
vim.wo.colorcolumn = "80"

-- Buffer options
vim.bo.syntax = "on"

-- Global options
vim.o.termguicolors = true
vim.o.scrolloff = 8
vim.o.showmatch = true
vim.o.undofile = true
vim.o.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.o.wrap = false
vim.o.expandtab = true
vim.o.shiftwidth = 2
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.autoindent = true
vim.o.clipboard = "unnamedplus"
vim.o.swapfile = false
vim.o.winborder = "rounded"
vim.g.netrw_banner = 0
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
