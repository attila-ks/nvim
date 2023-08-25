return {
  "sindrets/diffview.nvim",

  dependencies = {
    "nvim-lua/plenary.nvim"
  },

  -- FIXME: Diffview is not configured based on its GitHub page: https://github.com/sindrets/diffview.nvim
  config = function()
    vim.fn.system("git rev-parse --is-inside-work-tree")
    if vim.v.shell_error == 0 then
      local keymap = vim.keymap

      require("diffview").setup {
        keymap.set("n", "<leader>do", "<cmd>DiffviewOpen<CR>"),
        keymap.set("n", "<leader>dc", "<cmd>DiffviewClose<CR>"),
        keymap.set("n", "<leader>dt", "<cmd>DiffviewToggleFiles<CR>"),
        keymap.set("n", "<leader>df", "<cmd>DiffviewFocusFiles<CR>")
      }
    end
  end
}
