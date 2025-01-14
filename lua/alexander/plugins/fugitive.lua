return {
  {
    'tpope/vim-fugitive',  -- Fugitive plugin
    -- No configuration needed unless you want to customize it.
    vim.keymap.set("n", "<leader>gs", vim.cmd.Git);
  },
}

