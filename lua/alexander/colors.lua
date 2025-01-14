function TransparentBackground(color)
  -- Set a default color scheme if not provided
  color = color or "rose-pine"
  vim.cmd.colorscheme(color)

  -- Set background for 'Normal' and 'NormalFloat' highlights to 'none' for transparency
  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

-- Apply transparent background
TransparentBackground()

