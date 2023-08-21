return {
  "folke/trouble.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {},
  config = function()
    local keymap = vim.keymap

    require("trouble").setup {
      keymap.set("n", "<leader>xw", function() require("trouble").open("workspace_diagnostics") end),
      keymap.set("n", "<leader>xd", function() require("trouble").open("document_diagnostics") end)
    }
  end
}
