return {
	"mfussenegger/nvim-lint",
	lazy = false,
	config = function()
		require("lint").linters_by_ft = {
			javascript = { "ESLint" },
			python = { "Flake8" },
			c = { "Clang-Tidy" },
			cpp = { "Clang-Tidy" },
			sh = { "ShellCheck" },
			bash = { "ShellCheck" },
			zsh = { "ShellCheck" },
		}
	end,
}
