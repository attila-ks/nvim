return {
  -- Add git releated signs to the gutter, as well as utilities for managing changes.
  "lewis6991/gitsigns.nvim",

  config = function()
    require("gitsigns").setup {

      on_attach = function()
        local keymap = vim.keymap

        -- Navigation
        keymap.set("n", "<leader>j", "<cmd>Gitsigns next_hunk<CR>", { desc = "Git: Next hunk" })
        keymap.set("n", "<leader>k", "<cmd>Gitsigns prev_hunk<CR>", { desc = "Git: Prev hunk" })
        -- Actions
        keymap.set("n", "<leader>hs", "<cmd>Gitsigns stage_hunk<CR>", { desc = "Git: Stage hunk" })
        keymap.set("n", "<leader>hr", "<cmd>Gitsigns reset_hunk<CR>", { desc = "Git: Reset hunk" })
        keymap.set("n", "<leader>hu", "<cmd>Gitsigns undo_stage_hunk<CR>", { desc = "Git: Undo stage hunk" })
        keymap.set("n", "<leader>hp", "<cmd>Gitsigns preview_hunk_inline<CR>", { desc = "Git: Preview hunk inline" })
        keymap.set("n", "<leader>hS", "<cmd>Gitsigns stage_buffer<CR>", { desc = "Git: Stage buffer" })
        keymap.set("n", "<leader>hR", "<cmd>Gitsigns reset_buffer<CR>", { desc = "Git: Reset buffer" })
      end
    }
  end
}
