require("config.keymaps")
require("config.options")

-- bootstrap lazy.nvim and your plugins
require("config.lazy")

-- TODO: Try to put such configurations in separate files!

-- TODO: Check if this is the right way to achieve the highlighting!
-- [[ Highlight on yank ]]
vim.api.nvim_create_autocmd("TextYankPost", {
  pattern = "*",
  callback = function()
    vim.highlight.on_yank()
  end,
})
