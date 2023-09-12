return {
  -- Fuzzy Finder (files, lsp, etc).
  "nvim-telescope/telescope.nvim",

  version = "*",

  dependencies = {
    "nvim-lua/plenary.nvim",

    "nvim-telescope/telescope-fzf-native.nvim",
    build = "make",
    config = function()
      require("telescope").load_extension("fzf")
    end
  },

  config = function()
    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<leader>f", builtin.find_files, { desc = "Find files" })
    vim.keymap.set("n", "<leader>/", builtin.live_grep, { desc = "Grep" })
    -- Search recent files.
    vim.keymap.set("n", "<leader>of", builtin.oldfiles, { desc = "Find old files" })
    vim.keymap.set("n", "<leader>b", builtin.buffers, { desc = "Find buffers" })
  end
}
