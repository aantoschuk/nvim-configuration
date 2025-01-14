return {
  {
    'mbbill/undotree',  -- UndoTree plugin
    config = function()
      -- Optional configuration for UndoTree (customize if needed)
      vim.g.undotree_SetFocusWhenOpen = 1  -- Automatically focus on the UndoTree window when opened
      vim.g.undotree_HighlightChangedWithCursor = 1  -- Highlight the current change

      -- Keymaps
      vim.keymap.set("n", "<leader>u", ":UndotreeToggle<CR>", { desc = "Toogle Undotree" })
    end,
  },
}

