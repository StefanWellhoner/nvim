vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

vim.api.nvim_create_autocmd("TermOpen", {
	callback = function(args)
		vim.api.nvim_buf_set_keymap(args.buf, "n", "q", ":close<CR>", { noremap = true, silent = true })
	end,
})

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
	pattern = { "*/templates/*.yaml", "*/templates/*.tpl", "*/templates/*.yml" },
	callback = function()
		vim.bo.filetype = "helm"
	end,
})
