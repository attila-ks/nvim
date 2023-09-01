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
    vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files" })
    vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Grep" })
    -- Search recent files.
    vim.keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = "Find old files" })
    vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find buffers" })
  end
}
