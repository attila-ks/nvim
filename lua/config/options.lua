local opt = vim.opt

-- Make line numbers default.
vim.wo.number = true

-- Enable relative line numbers.
vim.wo.relativenumber = true

-- Sync clipboard between OS and Neovim.
opt.clipboard = "unnamedplus"

-- Save undo history.
opt.undofile = true

-- Case insensitive searching UNLESS /C or capital in search.
opt.ignorecase = true
opt.smartcase = true

-- Decrease update time.
opt.updatetime = 250
opt.timeout = true
opt.timeoutlen = 300