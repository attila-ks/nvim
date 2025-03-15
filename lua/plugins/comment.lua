return {
  -- Commenting plugin.
  "numToStr/Comment.nvim",

  config = function()
    require("Comment").setup {
      -- Toggle mappings in NORMAL mode.
      toggler = {
        -- Line-comment toggle keymap.
        line = "<leader>cl",
        -- Block-comment toggle keymap.
        block = "<leader>cb"
      },

      -- Operator-pending mappings in NORMAL and VISUAL mode.
      opleader = {
        -- Line-comment keymap.
        line = "<leader>cL",
        -- Block-comment keymap.
        block = "<leader>cB"
      },

      -- Extra mappings.
      extra = {
        -- Add comment on the line above.
        above = "<leader>cO",
        -- Add comment on the line below.
        below = "<leader>co",
        -- Add comment at the end of line.
        eol = "<leader>cA"
      }
    }
  end
}
