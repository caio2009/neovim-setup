local M = {}

function M.toggle_mouse()
  if vim.api.nvim_get_option("mouse") == "a" then
    vim.api.nvim_set_option("mouse", "")
  else
    vim.api.nvim_set_option("mouse", "a")
  end
end

function M.toggle_colorcolumn()
  if vim.api.nvim_win_get_option(0, "colorcolumn") == "" then
    vim.api.nvim_win_set_option(0, "colorcolumn", "80")
  else
    vim.api.nvim_win_set_option(0, "colorcolumn", "")
  end
end

return M
