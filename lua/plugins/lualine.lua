return {
  "nvim-lualine/lualine.nvim",

  opts = {
    sections = {
      lualine_z = {
        { "encoding", separator = "" },
        "fileformat"
      },
    },
  },
}
