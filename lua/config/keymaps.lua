-- Set <space> as the leader key.
-- NOTE: Must happen before plugins are required (otherwise wrong leader will be used).
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap

keymap.set("n", "<S-l>", ":bn<CR>", { desc = "Switch to the next buffer" })
keymap.set("n", "<S-h>", ":bp<CR>", { desc = "Switch to the previous buffer" })

keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move line(s) up" })
keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move line(s) down" })

-- Keep the cursor in the middle during 1/2 page jumping (downwards).
keymap.set("n", "<C-d>", "<C-d>zz")
-- Keep the cursor in the middle during 1/2 page jumping (upwards).
keymap.set("n", "<C-u>", "<C-u>zz")

-- Clear search highlight.
keymap.set("n", "<esc>", ":noh<CR>")

keymap.set("n", "<leader>r",
  function()
    local vimfinity = require("vimfinity")
    local executable_path = vimfinity.find_executable_path()
    vim.cmd(":!" .. executable_path)
  end,
  { desc = "Run without debugging" }
)
