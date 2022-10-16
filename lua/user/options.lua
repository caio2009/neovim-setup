local options = {
  guicursor = "",
  cursorline = false,
  number = true,
  relativenumber = true,
  hlsearch = false,
  hidden = true,
  errorbells = false,
  tabstop = 2,
  softtabstop = 2,
  shiftwidth = 2,
  expandtab = true,
  smartindent = true,
  wrap = false,
  smartcase = false,
  showmode = false,
  swapfile = false,
  backup = false,
  undofile = true,
  incsearch = true,
  termguicolors = true,
  -- scrolloff = 8,
  completeopt = { "menuone", "noselect" },
  colorcolumn = "80",
  signcolumn = "yes",
}

vim.opt.shortmess:append "c"

for k, v in pairs(options) do
  vim.opt[k] = v
end
