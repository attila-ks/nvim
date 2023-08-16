return {
  -- Add git releated signs to the gutter, as well as utilities for managing changes
  "lewis6991/gitsigns.nvim",

  config = function()
    require("gitsigns").setup {

      on_attach = function()
        local keymap = vim.keymap

        -- Navigation
        keymap.set("n", "<leader>j", "<cmd>Gitsigns next_hunk<CR>")
        keymap.set("n", "<leader>k", "<cmd>Gitsigns prev_hunk<CR>")
        -- Actions
        keymap.set("n", "<leader>hs", "<cmd>Gitsigns stage_hunk<CR>")
        keymap.set("n", "<leader>hr", "<cmd>Gitsigns reset_hunk<CR>")
        keymap.set("n", "<leader>hu", "<cmd>Gitsigns undo_stage_hunk<CR>")
        keymap.set("n", "<leader>hp", "<cmd>Gitsigns preview_hunk_inline<CR>")
        keymap.set("n", "<leader>hS", "<cmd>Gitsigns stage_buffer<CR>")
        keymap.set("n", "<leader>hR", "<cmd>Gitsigns reset_buffer<CR>")
      end
    }
  end
}
