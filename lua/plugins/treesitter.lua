return {
  "nvim-treesitter/nvim-treesitter",

  build = function()
    require("nvim-treesitter.install").update({ with_sync = true })
  end,

  opts = {
    -- Disable automatic installation of missing parsers when entering buffer.
    auto_install = false,
    highlight = { enable = true },
    -- Add languages to be installed here that you want installed for treesitter.
    ensure_installed = { "c", "cpp", "cmake", "lua", "vimdoc" }
  },

  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)
  end
}
