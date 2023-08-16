return {
  "sindrets/diffview.nvim",

  dependencies = {
    "nvim-lua/plenary.nvim"
  },

  -- FIXME: Diffview is not configured based on its GitHub page: https://github.com/sindrets/diffview.nvim
  config = function()
    -- TODO: Add `on_attach = function()`!
    local keymap = vim.keymap

    require("diffview").setup {
      keymap.set("n", "<leader>do", "<cmd>DiffviewOpen<CR>"),
      keymap.set("n", "<leader>dc", "<cmd>DiffviewClose<CR>"),
      keymap.set("n", "<leader>df", "<cmd>DiffviewToggleFiles<CR>")
    }
  end
}
