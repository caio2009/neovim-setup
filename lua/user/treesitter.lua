require("nvim-treesitter.configs").setup {
  ensure_installed = {
    "c",
    "cpp",
    "c_sharp",
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
    disable = { "html", "php" },
  },
  autopairs = {
    enable = true,
  },
  indent = { 
    enable = true, 
    disable = { 
      "html", 
      "python", 
      "php",
      -- "javascript", 
    }, 
  },
}
