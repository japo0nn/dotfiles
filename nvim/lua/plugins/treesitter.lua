require("nvim-treesitter.configs").setup({
  ensure_installed = {
    "c_sharp",
    "c",
    "cpp",
    "cmake",
    "css",
    "lua",
    "html",
    "dockerfile",
    "markdown",
    "markdown_inline",
    "yaml",
  },
  sync_install = false,
  highlight = { enable = true },
  indent = { enable = true },
})
