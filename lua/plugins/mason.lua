return {
  "williamboman/mason.nvim",

  opts = {
    ensure_installed = {
      "codelldb",
      "clang-format",
      "clangd",
      "mesonlsp",
      "shellcheck",
      "bash-language-server",
    },
  },
}
