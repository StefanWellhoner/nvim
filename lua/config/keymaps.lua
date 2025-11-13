vim.keymap.set("n", "<leader><leader>x", ":source %<CR>", { desc = "Source the current file" })
vim.keymap.set("n", "<leader>x", ":.lua <CR>", { desc = "Execute the current lua line" })
vim.keymap.set("v", "<leader>x", ":lua <CR>", { desc = "Execute the visually selected lua line" })

vim.keymap.set("n", "<leader>a", "ggVG", { desc = "Select entire buffer in visual mode" })
vim.keymap.set("n", "<Esc>", ":nohlsearch<CR>", { desc = "Clears highlight on search" })
vim.keymap.set({ "v", "x" }, "<leader>y", '"+y', { desc = "Yanks to clipboard" })
vim.keymap.set("n", "<leader>p", '"+p', { desc = "Pastes from clipboard" })
vim.keymap.set("n", "<leader>pv", ":Ex<CR>", { desc = "Open directory explorer" })
vim.keymap.set("n", "<leader>v", ":Vex %<CR>", { desc = "Vertical split of window" })
vim.keymap.set("n", "<leader>h", ":Hex %<CR>", { desc = "Horizontal split of window" })

-- TODO KEYMAPS --
local todo = require("todo-comments")
vim.keymap.set("n", "<leader>td", ":TodoTelescope<CR>", {})
vim.keymap.set("n", "]t", function()
	todo.jump_next()
end, { desc = "Next todo comment" })

vim.keymap.set("n", "[t", function()
	todo.jump_prev()
end, { desc = "Previous todo comment" })
