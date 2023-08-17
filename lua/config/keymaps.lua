-- Set <space> as the leader key
-- NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap

-- Switch to the next buffer.
keymap.set("n", "<S-l>", ":bn<CR>")
-- Switch to the previous buffer.
keymap.set("n", "<S-h>", ":bp<CR>")

-- TODO: Make it available only when the current buffer contains C/C++ code.
-- Switch between source/header (C/C++).
keymap.set("n", "gsh", ":ClangdSwitchSourceHeader<CR>", { silent = true, desc = "Switch src/header (C/C++)" })

-- Move line up.
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
-- Move line down.
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keep the cursor in the middle during 1/2 page jumping (downwards)
keymap.set("n", "<C-d>", "<C-d>zz")
-- Keep the cursor in the middle during 1/2 page jumping (upwards)
keymap.set("n", "<C-u>", "<C-u>zz")

-- Clear search highlight.
keymap.set("n", "<esc>", ":noh<CR>")
