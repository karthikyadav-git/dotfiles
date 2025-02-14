return {
	"mfussenegger/nvim-lint",
	config = function()
		require("lint").linters_by_ft = require("config.linters")

		vim.api.nvim_create_autocmd({ "BufWritePost", "BufReadPost", "InsertLeave" }, {
			callback = function()
				require("lint").try_lint()
			end,
		})
	end,
}
