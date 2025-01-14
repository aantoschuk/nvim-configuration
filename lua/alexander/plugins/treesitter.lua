-- plugins.lua (or inside init.lua if not using a separate plugin manager file)

return {
  -- Treesitter plugin
  {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',  -- Ensure parsers are updated automatically
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',  -- For text objects like code blocks
    },
    config = function()
      -- Configuration for nvim-treesitter
      require('nvim-treesitter.configs').setup {
        -- Enable treesitter for specific languages
        ensure_installed = { "lua", "javascript", "go", "typescript" },  -- Add your preferred languages here

        -- Enable syntax highlighting
        highlight = {
          enable = true,  -- Enable Tree-sitter highlighting
          additional_vim_regex_highlighting = false,  -- Optional: Disable Vim regex-based highlighting to avoid conflicts
        },

        -- Enable code folding with Tree-sitter
        fold = {
          enable = true,  -- Enable folding
        },

        -- Enable text objects (useful for selecting code blocks, function arguments, etc.)
        textobjects = {
          enable = true,
          select = {
            enable = true,
            lookahead = true,  -- Automatically jump to text objects
            keymaps = {
              -- Define keymaps for selecting text objects (e.g., function, class, etc.)
              ['af'] = '@function.outer',  -- Select the entire function
              ['if'] = '@function.inner',  -- Select the inner part of a function
            },
          },
        },

        -- Enable incremental selection (select parts of the syntax incrementally)
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = '<CR>',  -- Initial selection with Enter
            node_incremental = '<Tab>',  -- Increment selection with Tab
            node_decremental = '<S-Tab>',  -- Decrement selection with Shift-Tab
          },
        },

        -- Enable rainbow parentheses
        rainbow = {
          enable = true,
          extended_mode = true,  -- Enable extended mode for parentheses (more languages)
          max_file_lines = 1000,  -- Maximum lines in a file for enabling rainbow parentheses
        },
      }
    end,
  },
}

