return {
  -- Set lualine as statusline.
  "nvim-lualine/lualine.nvim",

  opts = {
    options = {
      icons_enabled = true,
      component_separators = "|",
      section_separators = "",
      path = 0,
      ignore_focus = {
        "dapui_scopes",
        "dapui_watches",
        "dapui_stacks",
        "dap-repl",
        "dapui_console"
      }
    },

    sections = {
      lualine_y = {}
    }
  }
}
