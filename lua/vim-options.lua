vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.g.mapleader = " "
vim.cmd("set number")

vim.keymap.set('i', 'jk', '<ESC>', {desc = "Exit insert mode with jk"})

vim.keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search hightlights" })

-- window management
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "split window verticall" })
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "split window horizintally" })
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "make splits equal" })
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

-- tab actions
vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "close current tab" })
vim.keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "go to next tab" })
vim.keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "go to previous tap" })
vim.keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer" })

