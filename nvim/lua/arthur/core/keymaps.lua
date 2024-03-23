vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- general keymaps

-- in insert mode, pressing "jk" will have the
-- same effect as <ESC> (exit insert mode)
keymap.set("i", "jk", "<ESC>")

-- in normal mode, when pressing <leader>(space)nh,
-- it's gonna clear search highlights.
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- in normal mode, when pressing x, it's gonna delete
-- the character without copying it to the register
-- (which is what it normally does)
keymap.set("n", "x", '"_x')

-- in normal mode, <leader>(space)+ and <leader>-
-- can be used to increment or decrement numbers
keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>-", "<C-x>")


-- split window vertically
keymap.set("n", "<leader>sv", "<C-w>v")
-- split window horizontally
keymap.set("n", "<leader>sh", "<C-w>s")
-- make split window equal width
keymap.set("n", "<leader>se", "<C-w>=")
-- close current split window
keymap.set("n", "<leader>sx", ":close<CR>")

-- open new tab
keymap.set("n", "<leader>to", ":tabnew<CR>")
-- close current tab
keymap.set("n", "<leader>tx", ":tabclose<CR>")
--  go to next tab
keymap.set("n", "<leader>tn", ":tabn<CR>")
--  go to previous tab
keymap.set("n", "<leader>tp", ":tabp<CR>")

-- plugin keymaps

-- vim-maximizer
-- toggle split window maximization
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer
