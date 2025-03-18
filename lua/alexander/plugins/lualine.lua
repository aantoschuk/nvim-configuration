-- lualine configuration for lazy.nvim

-- Ensure nvim-web-devicons is installed as a dependency for icons
return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },  -- Make sure nvim-web-devicons is installed
  
  config = function()
    -- Configure lualine
    require('lualine').setup({
      options = {
        icons_enabled = true,         -- Enable icons
        theme = 'gruvbox',            -- Set the theme (you can change it)
        section_separators = { left = '', right = '' },  -- Optional separators
        component_separators = { left = '', right = '' },
        disabled_filetypes = { 'NvimTree', 'packer' },  -- Disable for specific filetypes
      },
      sections = {
        lualine_a = { 'mode' },       -- Show current mode
        lualine_b = { 'branch', 'diff', 'diagnostics' },  -- Git info, diff, diagnostics
        lualine_c = { 'filename', 'filetype' },  -- File name and type
        lualine_x = { 'encoding', 'fileformat', 'filetype' },  -- Encoding and file format
        lualine_y = { 'progress' },  -- Show progress
        lualine_z = { 'location' },  -- Show cursor location
      },
      extensions = { 'fugitive' },  -- Fugitive extension for Git integration
    })
  end
}

