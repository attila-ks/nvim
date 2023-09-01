return {
  -- Set lualine as statusline.
  "nvim-lualine/lualine.nvim",

  opts = {
    options = {
      icons_enabled = true,
      component_separators = "|",
      section_separators = "",
      path = 2
    },

    sections = {
      lualine_y = {}
    }
  }
}
