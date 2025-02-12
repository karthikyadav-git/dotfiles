return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  lazy = false,
  opts = {
    auto_install = true,
    sync_install = false,
    highlight = { enable = true },
    indent = { enable = true }
  },
}

