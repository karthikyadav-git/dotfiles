return {
	"mfussenegger/nvim-lint",
  event = { "BufReadPost", "InsertLeave" },
	config = function()
		require("lint").linters_by_ft = {
			javascript = { "eslint_d" },
			python = { "flake8" },
			c = { "cpplint" },
			cpp = { "cpplint" },
			sh = { "shellcheck" },
			bash = { "shellcheck" },
			zsh = { "shellcheck" },
			lua = { "luacheck" },
		}

		vim.api.nvim_create_autocmd({ "BufWritePost", "BufReadPost", "InsertLeave" }, {
			callback = function()
				require("lint").try_lint()
			end,
		})
	end,
}
