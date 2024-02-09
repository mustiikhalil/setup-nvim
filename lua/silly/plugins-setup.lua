local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  'nvim-lua/plenary.nvim',
  { "catppuccin/nvim", as = "catppuccin" },
  'christoomey/vim-tmux-navigator',

  -- maximizing window
  'szw/vim-maximizer',
  'tpope/vim-surround',
  'vim-scripts/ReplaceWithRegister',

  -- Commenting code out gcc
  'numToStr/comment.nvim',

  -- Navigation
  "nvim-tree/nvim-tree.lua",
  "nvim-tree/nvim-web-devicons",
  "nvim-lualine/lualine.nvim",

  -- File structure
  { 'nvim-telescope/telescope.nvim', tag = '0.1.5' },
  { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },

  -- Auto suggestion
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-path",

  -- snippets
  "L3MON4D3/LuaSnip", -- snippet engine
  "saadparwaiz1/cmp_luasnip", -- for autocompletion
  "rafamadriz/friendly-snippets", -- useful snippets

  -- LSP
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",
  "hrsh7th/cmp-nvim-lsp",
  "jose-elias-alvarez/typescript.nvim",

  { "glepnir/lspsaga.nvim", branch = "main" },
  "onsails/lspkind.nvim",

  -- xcodebuild
  "wojciech-kulik/xcodebuild.nvim",
  "MunifTanjim/nui.nvim",
})
