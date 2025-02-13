return {
	{
		"williamboman/mason.nvim",
		opts = {},
	},
	{
		"williamboman/mason-lspconfig.nvim",
		opts = {
			ensure_installed = { "lua_ls", "ts_ls", "pyright", "clangd", "bashls" },
			automatic_installation = true,
		},
	},
}
