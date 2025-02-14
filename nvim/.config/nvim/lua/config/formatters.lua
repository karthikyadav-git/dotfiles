return {
	lua = { "stylua" },
	python = { "isort", "black" },
	rust = { "rustfmt", lsp_format = "fallback" },
	javascript = { "prettierd", "prettier", stop_after_first = true },
	c = { "clang-format" },
	cpp = { "clang-format" },
	sh = { "shfmt" },
	bash = { "shfmt" },
	zsh = { "shfmt" },
}
