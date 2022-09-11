require "user.options"
require "user.plugins"
require "user.explorer"
require "user.fuzzyfinder"
require "user.lsp"
require "user.cmp"
require "user.treesitter"
require "user.colorscheme"
require "user.statusline" -- status line needs to set after colorscheme
require "user.comment"
require "user.indentline"
require "user.keymaps"

require("gitsigns").setup {}

require("trouble").setup { 
  use_diagnostic_signs = true 
}

require("nvim-autopairs").setup {}

require "user.autocmd"
