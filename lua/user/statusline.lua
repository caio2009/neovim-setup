require("lualine").setup {
  options = {
    icons_enabled = false,
    component_separators = { left = '|', right = '|' },
    section_separators = { left = '', right = '' },
  },
  sections = {
    lualine_c = {
      {
        'filename',
        file_status = true,
        path = 1,
      },
    },
  },
  -- options = {
  --   theme = "codedark",
  -- },
  -- options = {
  --   icons_enabled = false,
  --   theme = "moonfly",
  -- },
  -- options = {
  --   icons_enabled = false,
  --   theme = "tokyonight",
  -- }
}
