function TransparentBackground(color)
  -- Set a default color scheme if not provided
  color = color or "rose-pine"
  vim.cmd.colorscheme(color)

  -- Set transparent background for 'Normal' and 'NormalFloat' highlights
  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

  -- Set the ColorColumn background to red (bright red in this case)
  vim.cmd [[highlight ColorColumn ctermbg=1 guibg=#8b0000]]

  -- Optional: Set the ColorColumn to highlight the 80th column (you can change this value)
  vim.o.colorcolumn = "80"
end

-- Apply transparent background with red ColorColumn
TransparentBackground()

