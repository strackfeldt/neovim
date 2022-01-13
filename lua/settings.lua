vim.g.mapleader = " "

vim.api.nvim_set_keymap("n", "<Leader>w", [[:bdelete<CR>]], {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<Leader>p", ":Telescope commands<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<Leader>f", ":Telescope find_files<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<Leader>tg", ":Telescope git_files<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<Leader>tl", ":Telescope live_grep<CR>", {noremap = true, silent = true})

vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", {silent = true})
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", {silent = true})
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", {silent = true})
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", {silent = true})

vim.api.nvim_set_keymap("n", "<Leader>s", ":up<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<C-x>", ":bd<CR>", {silent = true})
vim.api.nvim_set_keymap("n", "<Leader>e", ":NvimTreeToggle<CR>", {noremap = true, silent = true})

vim.api.nvim_set_keymap(
  "v",
  "<Leader>re",
  [[ <Esc><Cmd>lua require('refactoring').refactor('Extract Function')<CR>]],
  {noremap = true, silent = true, expr = false}
)
vim.api.nvim_set_keymap(
  "v",
  "<Leader>rf",
  [[ <Esc><Cmd>lua require('refactoring').refactor('Extract Function To File')<CR>]],
  {noremap = true, silent = true, expr = false}
)

vim.cmd([[set guifont=Monolisa\ Nerd\ Font]])
vim.cmd("set mouse=a")
vim.cmd("set signcolumn=yes")
vim.cmd("set ts=2")
vim.cmd("set sw=2")
vim.opt.timeoutlen = 100
vim.o.cmdheight = 1
vim.o.pumheight = 10
vim.o.fileencoding = "utf-8"

vim.o.splitbelow = true
vim.o.splitright = true

vim.bo.expandtab = true
vim.bo.smartindent = true
vim.bo.autoindent = true

vim.wo.number = true
vim.wo.relativenumber = true

vim.wo.cursorline = true

vim.o.swapfile = false
vim.o.backup = false
vim.o.writebackup = false

vim.o.updatetime = 100
vim.o.clipboard = "unnamedplus"
vim.o.scrolloff = 8

-- vim.cmd("filetype on")
-- vim.cmd("syntax on")
-- vim.cmd("set noswapfile")
-- vim.cmd("set noshowmode")
-- vim.cmd("set iskeyword+=-")
-- vim.cmd("set shortmess+=c")
-- vim.cmd("set whichwrap+=<,>,[,],h,l")
-- vim.cmd("set ignorecase")
-- vim.cmd("set smartcase ")
-- vim.o.showmode = false
-- vim.o.hidden = true
-- vim.cmd("set ts=2")
-- vim.cmd("set sw=2")
-- vim.wo.wrap = false
