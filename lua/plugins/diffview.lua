return {
  "sindrets/diffview.nvim",

  dependencies = {
    "nvim-lua/plenary.nvim"
  },

  config = function()
    vim.fn.system("git rev-parse --is-inside-work-tree")
    if vim.v.shell_error == 0 then
      local keymap = vim.keymap

      require("diffview").setup {
        keymap.set("n", "<leader>do", "<cmd>DiffviewOpen<CR>", { desc = "Git: Open diffview" }),
        keymap.set("n", "<leader>dc", "<cmd>DiffviewClose<CR>", { desc = "Git: Close diffview" }),
        keymap.set("n", "<leader>dt", "<cmd>DiffviewToggleFiles<CR>", { desc = "Git: Toggle file panel" }),
        keymap.set("n", "<leader>df", "<cmd>DiffviewFocusFiles<CR>", { desc = "Git: Focus on the file panel" })
      }
    end
  end
}
