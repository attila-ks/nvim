return {
  -- Fuzzy Finder (files, lsp, etc)
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
    vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
    vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
    -- Search recent files
    vim.keymap.set("n", "<leader>fr", builtin.oldfiles, {})
    vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
  end
}
