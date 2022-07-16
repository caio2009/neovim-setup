require("nvim-treesitter.configs").setup {
  ensure_installed = {
    "css",
    "html",
    "javascript",
    "lua",
    "php",
    "python",
    "ruby",
    "typescript",
  },
  highlight = {
    enable = true,
    disable = { "html" },
  },
  autopairs = {
    enable = true,
  },
  indent = { 
    enable = true, 
    disable = { "python", "html" }, 
  },
}
