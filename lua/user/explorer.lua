require('nvim-tree').setup {
  hijack_cursor = true,
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "o", action = "edit_in_place" },
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  git = {
    ignore = false
  },
  diagnostics = {
    enable = true,
    show_on_dirs = true,
    icons = {
      hint = "H",
      info = "I",
      warning = "W",
      error = "E",
    },
  },
}

local M = {}

function M.toggle_replace()
  if vim.api.nvim_buf_get_name(0) == "" then
    vim.cmd[[e .]]
  else
    local view = require("nvim-tree.view")
    if view.is_visible() then
      view.close()
    else
      require("nvim-tree").open_replacing_current_buffer()
    end
  end
end

return M

-- vim.cmd[[
-- let g:netrw_keepdir = 0
-- let g:netrw_banner = 0
-- let g:netrw_localcopydircmd = 'cp -r'
-- ]]
