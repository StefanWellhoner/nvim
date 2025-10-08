return {
	"nvimtools/none-ls.nvim",
	config = function()
		require("null-ls").setup({
			sources = {
				require("null-ls").builtins.formatting.rubocop,
				require("null-ls").builtins.diagnostics.rubocop,
			},
		})
	end,
}
