return {
	{
		"mason-org/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"mason-org/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "gopls", "stylua", "rubocop", "yamlls" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			vim.lsp.config("lua_ls", {
				settings = {
					Lua = {
						hint = {
							enable = true,
						},
					},
				},
			})

			vim.lsp.config("gopls", {
				settings = {
					gopls = {
						hints = {
							parameterNames = true,
						},
					},
				},
			})

			vim.lsp.enable({ "lua_ls", "gopls", "rubocop", "yamlls" })

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>gD", vim.lsp.buf.declaration, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
			vim.keymap.set("n", "<leader>k", vim.lsp.buf.signature_help, { desc = "Signature help" })
			vim.keymap.set("n", "<leader>ff", function()
				vim.lsp.buf.format({ async = true })
			end, {})

			vim.keymap.set("n", "<leader>ih", function()
				vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled({ bufnr = 0 }), { bufnr = 0 })
			end, { desc = "Toggle Inlay Hints" })
		end,
	},
}
