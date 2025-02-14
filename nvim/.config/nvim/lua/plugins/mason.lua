return {
	{
		"williamboman/mason.nvim",
		opts = {},
	},
	{
		"williamboman/mason-lspconfig.nvim",
		opts = {
			ensure_installed = require("config.lsp").servers,
			automatic_installation = true,
		},
	},
}
