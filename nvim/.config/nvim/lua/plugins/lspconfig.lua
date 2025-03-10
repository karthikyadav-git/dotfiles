return {
	{
		"williamboman/mason.nvim",
    cmd = "Mason",
		opts = {},
	},
	{
		"williamboman/mason-lspconfig.nvim",
    event = "VeryLazy",
		opts = {
			ensure_installed = {},
			automatic_installation = true,
		},
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = { "saghen/blink.cmp" },

    event = "VeryLazy",
		opts = {
			servers = {
				lua_ls = {},
				ts_ls = {},
				pyright = {},
				clangd = {},
			},
		},

		config = function(_, opts)
			local lspconfig = require("lspconfig")
			for server, config in pairs(opts.servers) do
				config.capabilities = require("blink.cmp").get_lsp_capabilities(config.capabilities)
				lspconfig[server].setup(config)
			end
		end,
	},
}
