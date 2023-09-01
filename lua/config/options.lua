local opt = vim.opt

-- Faking netrw being setup, so it won't show up.
vim.g.loaded_netrwPlugin = 1
vim.g.loaded_netrw = 1

-- Make line numbers default.
vim.wo.number = true

-- Enable mouse mode.
opt.mouse = "a"

-- Sync clipboard between OS and Neovim.
opt.clipboard = "unnamedplus"

-- Enable break indent.
opt.breakindent = true

-- Save undo history.
opt.undofile = true

-- Case insensitive searching UNLESS /C or capital in search.
opt.ignorecase = true
opt.smartcase = true

-- Keep signcolumn on by default.
vim.wo.signcolumn = "yes"

-- Decrease update time.
opt.updatetime = 250
opt.timeout = true
opt.timeoutlen = 300

-- Set completeopt to have a better completion experience.
opt.completeopt = "menuone,noselect"

-- NOTE: You should make sure your terminal supports this.
opt.termguicolors = true

-- Split windows.
opt.splitright = true
opt.splitbelow = true

-- Makes sure spaces are used for indenting, even when `Tab` key pressed.
opt.expandtab = true
-- The number of spaces used for indenting.
opt.tabstop = 2
-- Number of spaces to use for each step of (auto)indent. Used for `>>`, `<<`, etc.
opt.shiftwidth = 2
opt.autoindent = true

-- Blinking cursor.
opt.guicursor = "a:blinkon100"
