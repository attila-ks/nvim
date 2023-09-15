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
        -- TODO: Consider to toggle the window with the same keymap, so `<leader>gc` can be removed.
        keymap.set("n", "<leader>gd", function()
          if not Diffview_open then
            vim.cmd(":DiffviewOpen")
            Diffview_open = true
          else
            vim.cmd(":DiffviewClose")
            Diffview_open = false
          end
        end, { desc = "Git: Toggle diffview" }),

        keymap.set("n", "<leader>gf", "<cmd>DiffviewToggleFiles<CR>", { desc = "Git: Toggle file panel" }),
        keymap.set("n", "<leader>gff", "<cmd>DiffviewFocusFiles<CR>", { desc = "Git: Focus on the file panel" })
      }
    end
  end
}
