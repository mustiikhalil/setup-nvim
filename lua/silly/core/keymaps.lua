vim.g.mapleader = " "

local keymap = vim.keymap

-- general keymaps

keymap.set("i", "jk", "<ESC>")
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- Delete character without copying into register
keymap.set("n", "x", "_x")

keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>-", "<C-x>")

-- Window management
keymap.set("n", "<leader>n", ":NvimTreeToggle<CR>")
keymap.set("n", "<leader>sv", "<C-w>v") -- split vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split equal
keymap.set("n", "<leader>sx", ":close<CR>")
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- Managing tabs
keymap.set("n", "<leader>to", ":tabnew<CR>") -- create new tab 
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- go to previous tab


