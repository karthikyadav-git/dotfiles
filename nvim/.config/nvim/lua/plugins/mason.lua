return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		opts = {},
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			ensure_installed = { "lua_ls", "ts_ls", "pyright", "clangd", "bashls" },
			automatic_installation = true,
		},
	},
}
