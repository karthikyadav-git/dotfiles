return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    lazy = false,
    opts = {},
    config = function()
      require("config.telescope")
    end,
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    opts = {
      extensions = {
        ["ui-select"] = {
          require("telescope.themes").get_dropdown {}
        }
      }
    },
  }
}

