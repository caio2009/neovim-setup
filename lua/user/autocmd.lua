local api = vim.api

-- Indentation setup

local indentationGroup = api.nvim_create_agroup("IndentationSetup", { clear = true })

api.nvim_create_autocmd(
  "FileType python",
  command = [[ setlocal shiftwidth=4 tabstop=4 softtabstop=4 ]],
  group = indentationGroup,
)

api.nvim_create_autocmd(
  "FileType c",
  command = [[ setlocal shiftwidth=4 tabstop=4 softtabstop=4 ]],
  group = indentationGroup,
)

api.nvim_create_autocmd(
  "FileType cpp",
  command = [[ setlocal shiftwidth=4 tabstop=4 softtabstop=4 ]],
  group = indentationGroup,
)

---
