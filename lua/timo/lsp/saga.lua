local saga = require("lspsaga")

saga.init_lsp_saga()

vim.keymap.set("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", { silent = true })
vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", { silent = true })

local action = require("lspsaga.action")
-- scroll down hover doc or scroll in definition preview
vim.keymap.set("n", "<C-f>", function()
	action.smart_scroll_with_saga(1)
end, { silent = true })
-- scroll up hover doc
vim.keymap.set("n", "<C-b>", function()
	action.smart_scroll_with_saga(-1)
end, { silent = true })
