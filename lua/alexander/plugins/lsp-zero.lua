return {
  -- LSP Zero and dependencies
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',  -- Use the latest stable version (v2.x)
    dependencies = {
      'neovim/nvim-lspconfig', 
      'hrsh7th/cmp-nvim-lsp',  
      'hrsh7th/nvim-cmp',
      'ray-x/go.nvim',
      'williamboman/mason.nvim',  -- Add mason for managing LSP servers
      'williamboman/mason-lspconfig.nvim'
    },
    config = function()
      -- LSP Zero setup
      local lsp = require('lsp-zero')

      lsp.preset('recommended')  -- This sets up recommended defaults for LSP servers

      lsp.configure('eslint', {
        enabled = false
      })

      -- Add mason setup to ensure LSP servers can be installed
      require('mason').setup()
      require('mason-lspconfig').setup({
        ensure_installed = { 'gopls', 'ts_ls' },  -- Automatically install these LSP servers
      })

      local lspconfig = require('lspconfig')

      -- Configure Go LSP server (gopls)
      lspconfig.gopls.setup({
        filetypes = { 'go', 'gomod', 'gohtml', 'gotext', 'gowork' },  -- Ensure it only handles Go files
        settings = {
          gopls = {
            analyses = {
              unusedparams = true,
              shadow = true,
            },
            staticcheck = true,
          },
        },
      })

      -- Configure TypeScript LSP server (ts_ls is an alias for typescript-language-server)
      lspconfig.ts_ls.setup({
        filetypes = { "typescript", "typescriptreact" },
        on_attach = function(client, bufnr)

          -- Keybindings for TypeScript (optional)
          vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = bufnr, desc = 'Go to Definition' })
          vim.keymap.set('n', 'gr', vim.lsp.buf.references, { buffer = bufnr, desc = 'Find References' })
          vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = bufnr, desc = 'Hover Documentation' })
          vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { buffer = bufnr, desc = 'Rename Symbol' })
          vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { buffer = bufnr, desc = 'Code Action' })
          vim.api.nvim_set_keymap('n', '<leader>f', ':!prettier --write %<CR>', { noremap = true, silent = true })
        end,
      })

      -- Optional: Configure LSP servers if needed (e.g., for specific language servers)
      -- lsp.configure('pyright', { settings = { python = { analysis = { typeCheckingMode = 'basic' } } } })

      -- Additional LSP server setup (optional)
      lsp.setup()

      -- Optional: Set up some keybindings for LSP functionality
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = 'Go to Definition' })
      vim.keymap.set('n', 'gr', vim.lsp.buf.references, { desc = 'Find References' })
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = 'Hover Documentation' })
      vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { desc = 'Rename Symbol' })
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = 'Code Action' })

      -- Remaps for autocomplition
      local cmp = require('cmp')
      local cmp_select = { behavior = cmp.SelectBehavior.Select }
      local cmp_mappings = lsp.defaults.cmp_mappings({
        ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
        ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
        ['<C-y>'] = cmp.mapping.confirm({select = true}),
        ['<C-Space>'] = cmp.mapping.complete(),
      })
    end,
  },
}

