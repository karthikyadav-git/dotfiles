local configs = require("nvim-treesitter.configs")

configs.setup({
  ensure_installed = {
    "c",
    "cpp",
    "css",
    "lua",
    "vim",
    "vimdoc",
    "query",
    "javascript",
    "html",
    "python",
    "typescript",
    "make",
    "tsx",
    "json",
    "xml",
    "yaml",
  },
  sync_install = false,
  highlight = { enable = true },
  indent = { enable = true },
})

