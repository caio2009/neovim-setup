require("nvim-treesitter.configs").setup {
  ensure_installed = {
    "c",
    "cpp",
    "c_sharp",
    "css",
    "go",
    "html",
    "java",
    "javascript",
    "lua",
    "markdown",
    "php",
    "python",
    "ruby",
    "rust",
    "typescript",
  },
  highlight = {
    enable = true,
    disable = { "html", "php" },
  },
  autopairs = {
    enable = true,
  },
  indent = {
    enable = true,
    disable = { "python", "html", "php" },
  },
}
