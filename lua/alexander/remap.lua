-- map :Ex command to leader + pv
vim.g.mapleader = " "

--  In normal mode open Project View
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) 

-- In visual mode like up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Join Lines and keep cursor in place
vim.keymap.set("n", "J", "mzJ`z")

-- Keep the cursor in the center of screen
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Keep the cursor in the center when searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")


-- Delete and paste into highlighted word without saving it in buffer
vim.keymap.set("x", "<leader>p", "\"_dp")

-- Copy to clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- Bind Prettier to a key, e.g., <leader>f
vim.api.nvim_set_keymap('n', '<leader>f', ':!prettier --write %<CR>', { noremap = true, silent = true })

-- Harpoon keymaps
vim.api.nvim_set_keymap('n', '<leader>h', ':lua require("harpoon.ui").toggle_quick_menu()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>a', ':lua require("harpoon.mark").add_file()<CR>', { noremap = true, silent = true })

