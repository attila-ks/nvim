-- Switch between source/header (C/C++).
vim.keymap.set("n", "<A-o>", ":ClangdSwitchSourceHeader<CR>", { silent = true })
