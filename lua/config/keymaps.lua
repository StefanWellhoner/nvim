vim.keymap.set("n", "<leader><leader>x", "<cmd>source %<CR>", { desc = "Source the current file" })
vim.keymap.set("n", "<leader>x", "<cmd>.lua <CR>", { desc = "Execute the current lua line" })
vim.keymap.set("v", "<leader>x", "<cmd>lua <CR>", { desc = "Execute the visually selected lua line" })

vim.keymap.set("n", "<leader>a", "ggVG", { desc = "Select entire buffer in visual mode" })
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clears highlight on search" })
vim.keymap.set({ "v", "x" }, "<leader>y", '"+y', { desc = "Yanks to clipboard" })
vim.keymap.set("n", "<leader>p", '"+p', { desc = "Pastes from clipboard" })
vim.keymap.set("n", "<leader>pv", "<cmd>Ex<CR>", { desc = "Open directory explorer" })
vim.keymap.set("n", "<leader>v", "<cmd>Vex %<CR>", { desc = "Vertical split of window" })
vim.keymap.set("n", "<leader>h", "<cmd>Hex %<CR>", { desc = "Horizontal split of window" })

-- TODO KEYMAPS --
local todo = require("todo-comments")
vim.keymap.set("n", "<leader>td", "<cmd>TodoTelescope<CR>", {})
vim.keymap.set("n", "]t", function()
	todo.jump_next()
end, { desc = "Next todo comment" })

vim.keymap.set("n", "[t", function()
	todo.jump_prev()
end, { desc = "Previous todo comment" })

-- INDENT BLANKLINE KEYMAPS --
vim.keymap.set("n", "<leader>\\", "<cmd>IBLToggle<CR>", {})

-- UNDO TREE --
vim.keymap.set("n", "<leader>u", "<cmd>UndotreeToggle<CR>", {})
