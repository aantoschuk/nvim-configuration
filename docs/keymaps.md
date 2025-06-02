# Keymaps

## Map Leader

Setting my own mapleader as the default wasn't as helpful or comfortable to use, so I set it to the space bar.

```
vim.g.mapleader = " "
```

## File Explorer

I use netrw as my file explorer and have my own custom keymap, *leader pv*, for project view.

```
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
```

## Move lines

A custom keymap moves selected lines up and down with auto-indentation. 
In Visual mode, press J to move the lines down or K to move them up.

```
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
```

## Join lines

To prevent the cursor from jumping when joining lines, I prefer it to stay in place.

```
vim.keymap.set("n", "J", "mzJ`z")
```

## Half-page scroll 

When using half-page scroll, keep the cursor in the same position.

```
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
```

## Deleting and pasting

When deleting and pasting, do not store the deleted data in the Neovim buffer.

```
vim.keymap.set("x", "<leader>p", "\"_dp")
```

## Copy to clipboard

Sometimes, I need to copy and paste elsewhere. 
While *yank* only works within the Neovim buffer, this setup allows yanking to the system clipboard.

```
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")
```

## Panes and Windows

Splits and Panes:

Split vertically
```
vim.keymap.set("n", "<leader>sv", ":vsplit<CR>")
```

Move focus to right split
```
vim.keymap.set("n", "<leader>wr", ":wincmd l<CR>")
```

Move focus to the left split
```
vim.keymap.set("n", "<leader>wl", ":wincmd h<CR>")
```

## Harpoon

Open Harpoon quick menu

```
vim.api.nvim_set_keymap('n', '<leader>h', ':lua require("harpoon.ui").toggle_quick_menu()<CR>', { noremap = true, silent = true })
```

To mark a file with the Harpoon plugin

```
vim.api.nvim_set_keymap('n', '<leader>a', ':lua require("harpoon.mark").add_file()<CR>', { noremap = true, silent = true })
```

## Trouble

Shows diagnostics, references, quickfix and location lists to help solve errors.

```<leader>xx``` shows list of all the errors in the project
```
{
    "<leader>xx",
    "<cmd>Trouble diagnostics toggle<cr>",
    desc = "Diagnostics (Trouble)",
}
```
