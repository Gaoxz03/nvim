-- Encoding
vim.o.encoding = "UTF-8"

-- Tab
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true

-- Numbers
vim.o.number = true
vim.o.relativenumber = true

-- Cursor
vim.o.cursorline = true

-- Indent
vim.o.autoindent = true

-- Search
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.hlsearch = true
vim.o.incsearch = true

-- Mouse
vim.o.mouse = "a"

-- Backup
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false

-- Wrap
vim.o.wrap = true

-- Popup
vim.o.pumheight = 10
vim.o.clipboard = "unnamedplus"

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true
