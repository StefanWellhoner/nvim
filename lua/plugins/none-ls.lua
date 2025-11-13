return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvimtools/none-ls-extras.nvim",
	},
	config = function()
		require("null-ls").setup({
			sources = {
				require("null-ls").builtins.formatting.rubocop,
				require("null-ls").builtins.diagnostics.rubocop,
				require("none-ls.diagnostics.eslint"),
			},
		})
	end,
}
