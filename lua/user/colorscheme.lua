-- Tokyo Night
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
vim.cmd[[highlight ColorColumn guibg=purple]]

-- Gruvbox
-- require("gruvbox").setup {
--   transparent_mode = true,
-- }
-- vim.o.background = "dark"
-- vim.cmd [[ colorscheme gruvbox ]]

-- Gruvbox Baby
-- vim.g.gruvbox_baby_transparent_mode = 1
-- vim.g.gruvbox_baby_telescope_theme = 1
-- vim.cmd[[colorscheme gruvbox-baby]]
