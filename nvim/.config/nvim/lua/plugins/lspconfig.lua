return {
	{
		"williamboman/mason.nvim",
		opts = {},
	},
	{
		"williamboman/mason-lspconfig.nvim",
		opts = {
			ensure_installed = {},
			automatic_installation = true,
		},
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = { "saghen/blink.cmp" },

		opts = {
			servers = {
				javascript = { "eslint_d" },
				python = { "flake8" },
				c = { "cpplint" },
				cpp = { "cpplint" },
				sh = { "shellcheck" },
				bash = { "shellcheck" },
				zsh = { "shellcheck" },
				lua = { "luacheck" },
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
