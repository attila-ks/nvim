return {
  -- Commenting plugin.
  "numToStr/Comment.nvim",

  config = function()
    require("Comment").setup {
      -- Toggle mappings in NORMAL mode.
      toggler = {
        -- Line-comment toggle keymap.
        line = "<leader>c",
        -- Block-comment toggle keymap.
        block = "<leader>bc"
      }
    }
  end
}
