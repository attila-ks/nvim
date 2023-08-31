local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- Latest stable release.
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  spec = {
    -- NOTE: Here is where you install your plugins.

    -- TODO: Move this to its own file!
    -- Multiple cursors plugin
    "mg979/vim-visual-multi",

    { import = "plugins" },
  }
})
