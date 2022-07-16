local fn = vim.fn
local install_path = fn.stdpath("data").."/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
end

return require("packer").startup(function(use)
  use "wbthomason/packer.nvim"

  use "nvim-lua/plenary.nvim"
  use "kyazdani42/nvim-web-devicons"
  use "kyazdani42/nvim-tree.lua"
  use "nvim-lualine/lualine.nvim"
  use "lewis6991/gitsigns.nvim"
  use "folke/trouble.nvim"
  use "nvim-telescope/telescope.nvim"
  use "ThePrimeagen/harpoon"
  -- use "lukas-reineke/indent-blankline.nvim"

  use "windwp/nvim-autopairs"
  use "terrortylor/nvim-comment"

  use "NTBBloodbath/doom-one.nvim"

  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-cmdline"
  use "saadparwaiz1/cmp_luasnip"

  use "L3MON4D3/LuaSnip" -- snippet engine
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

  use "neovim/nvim-lspconfig"

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  if packer_bootstrap then
    require("packer").sync()
  end
end)
