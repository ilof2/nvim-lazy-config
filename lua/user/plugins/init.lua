return {
  { "folke/neoconf.nvim", cmd = "Neoconf" },
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
  "numToStr/Comment.nvim",
  { "moll/vim-bbye", commit = "25ef93ac5a87526111f43e5110675032dbcacf56" },

  -- snippets
  "lewis6991/gitsigns.nvim",

  -- Python
  { "nvim-neotest/nvim-nio" },
  'integralist/vim-mypy',
  'mfussenegger/nvim-dap',
  { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} },
  "ravenxrz/DAPInstall.nvim",
  'AckslD/swenv.nvim',
}
