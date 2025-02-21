return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
    event = "BufReadPost",
		config = function()
			require("nvim-treesitter.configs").setup({
				auto_install = true,
				sync_install = false,
				highlight = { enable = true },
				indent = { enable = true },
			})
		end,
	},
	{
		"windwp/nvim-ts-autotag",
		opts = {},
	},
}
