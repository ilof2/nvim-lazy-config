
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
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
local plugins = {
  { "ellisonleao/gruvbox.nvim", priority = 1000 , config = true, opts = ...},
  "folke/which-key.nvim",
  { "folke/neoconf.nvim", cmd = "Neoconf" },
  "folke/neodev.nvim",
  "nvim-lua/popup.nvim",
  { "nvim-lua/plenary.nvim", commit = "4b7e52044bbb84242158d977a50c4cbcd85070c7" },
  {
      "ThePrimeagen/harpoon",
      branch = "harpoon2",
      requires = { {"nvim-lua/plenary.nvim"} }
  },
  "windwp/nvim-autopairs",

  -- cmp plugins
  -- "saadparwaiz1/cmp_luasnip"
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-path",
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-cmdline",
  "hrsh7th/cmp-nvim-lsp",
  "numToStr/Comment.nvim",
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    config = function()
      require("neo-tree").setup()
    end,
  },
  { "moll/vim-bbye", commit = "25ef93ac5a87526111f43e5110675032dbcacf56" },
  { "nvim-lualine/lualine.nvim", commit = "a52f078026b27694d2290e34efa61a6e4a690621" },

  -- snippets
  "L3MON4D3/LuaSnip",
  "rafamadriz/friendly-snippets",

  -- LSP
  {'williamboman/mason.nvim'},
  {'williamboman/mason-lspconfig.nvim'},
  {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
  {'neovim/nvim-lspconfig'},
  {'hrsh7th/cmp-nvim-lsp'},
  {'hrsh7th/nvim-cmp'},
  {'L3MON4D3/LuaSnip'},

  -- Telescope
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
    dependencies = { {'nvim-lua/plenary.nvim'} }
  },
  -- TreeSitter
  {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  },
  "lewis6991/gitsigns.nvim",

  -- colorschemes
  "lunarvim/colorschemes",
  "sainnhe/everforest",
  { "ellisonleao/gruvbox.nvim" },

  -- Python
  { "nvim-neotest/nvim-nio" },
  'integralist/vim-mypy',
  'mfussenegger/nvim-dap',
  { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} },
  "ravenxrz/DAPInstall.nvim",
  'AckslD/swenv.nvim',
}

require("lazy").setup(plugins)
