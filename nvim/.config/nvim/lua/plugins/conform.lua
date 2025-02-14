return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = require("config.formatters"),
		format_on_save = {
			timeout_ms = 500,
			lsp_format = "fallback",
		},
	},
}
