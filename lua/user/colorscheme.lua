-- vim.g.tokyonight_style = "night"
-- vim.g.tokyonight_transparent = true
-- vim.g.tokyonight_transparent_sidebar = true

-- vim.g.tokyonight_colors = { bg_visual = "#311b92" }

require("tokyonight").setup {
  style = "night",
  transparent = true,
  styles = {
    sidebars = "transparent",
  },
  lualine_bold = true,
  on_colors = function(colors)
    colors.bg_visual = "#311b92"
  end,
}

vim.cmd[[colorscheme tokyonight]]
vim.cmd[[highlight ColorColumn guibg=yellow]]

-- require("gruvbox").setup {
--   transparent_mode = true,
-- }

-- vim.o.background = "dark"
-- vim.cmd [[ colorscheme gruvbox ]]
