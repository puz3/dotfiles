-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Load Lazy
require("config.lazy")

-- Line number configuration.
-- Enable line numbers.
-- Enable relative line numbers.
vim.opt.number = true
vim.opt.relativenumber = true

-- Set color scheme.
vim.opt.background = "dark"
vim.cmd.colorscheme("catppuccin-mocha")

-- Set prefered indentation.
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- Enable smart indentation
vim.opt.autoindent = true
vim.opt.smartindent = true

-- Use system clipboard instead
vim.opt.clipboard = "unnamedplus"

-- Enable nerd fonts
vim.g.have_nerd_font = true

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Show which line your cursor is on
vim.opt.cursorline = true
