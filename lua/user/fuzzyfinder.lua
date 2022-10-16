require("telescope").setup {
  defaults = {
    file_ignore_patterns = { "node_modules", "target", "bin", ".git", "dist" },
    mappings = {
      i = {
        ["<C-n>"] = false,
        ["<C-p>"] = false,
        ["<C-j>"] = "move_selection_next",
        ["<C-k>"] = "move_selection_previous",
      },
    }
  },
}
