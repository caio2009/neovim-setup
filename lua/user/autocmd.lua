local api = vim.api

-- Indentation setup

local indentationGroup = api.nvim_create_augroup("IndentationSetup", { clear = true })

api.nvim_create_autocmd(
  "FileType",
  {
    pattern = "python",
    command = [[setlocal shiftwidth=4 tabstop=4 softtabstop=4]],
    group = indentationGroup,
  }
)

api.nvim_create_autocmd(
  "FileType",
  {
    pattern = "c",
    command = [[setlocal shiftwidth=4 tabstop=4 softtabstop=4]],
    group = indentationGroup,
  }
)

api.nvim_create_autocmd(
  "FileType",
  {
    pattern = "cpp",
    command = [[setlocal shiftwidth=4 tabstop=4 softtabstop=4]],
    group = indentationGroup,
  }
)

api.nvim_create_autocmd(
  "FileType",
  {
    pattern = "cs",
    command = [[setlocal shiftwidth=4 tabstop=4 softtabstop=4]],
    group = indentationGroup,
  }
)

api.nvim_create_autocmd(
  "FileType",
  {
    pattern = "php",
    command = [[setlocal shiftwidth=4 tabstop=4 softtabstop=4]],
    group = indentationGroup,
  }
)

api.nvim_create_autocmd(
  "FileType",
  {
    pattern = "sql",
    command = [[setlocal shiftwidth=4 tabstop=4 softtabstop=4]],
    group = indentationGroup,
  }
)

api.nvim_create_autocmd(
  "FileType",
  {
    pattern = "java",
    command = [[setlocal shiftwidth=4 tabstop=4 softtabstop=4]],
    group = indentationGroup,
  }
)

api.nvim_create_autocmd(
  "FileType",
  {
    pattern = "markdown",
    command = [[setlocal tw=80 fo+=t]],
    group = indentationGroup,
  }
)

---
