return {
  {
    'folke/which-key.nvim',
    event = 'VeryLazy'
  },

  {
    'stevearc/conform.nvim',
    event = { 'BufReadPre', 'BufNewFile' },
    lazy = true,
    config = function()
      require 'configs.conform'
    end,
  },

  {
    'mfussenegger/nvim-lint',
    event = { 'BufReadPre', 'BufNewFile' },
    lazy = true,
    config = function()
      require 'configs.linting'
    end,
  },

  {
    'ellisonleao/glow.nvim',
    config = true,
    cmd = 'Glow',
  },

  {
    'iamcco/markdown-preview.nvim',
    lazy = false,
    config = function()
      vim.fn['mkdp#util#install']()
    end,
  },

  {
    'neovim/nvim-lspconfig',
    config = function()
      require('nvchad.configs.lspconfig').defaults()
      require 'configs.lspconfig'
    end,
  },

  {
    'williamboman/mason.nvim',
    opts = {
      ensure_installed = {
        'black',
        'clang-format',
        'clangd',
        'cpplint',
        'eslint_d',
        'html-lsp',
        'isort',
        'lua-language-server',
        'prettier',
        'pyright',
        'ruff',
        'rust-analyzer',
        'stylua',
      },
    },
  },

  {
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
    },
    opts = {
      ensure_installed = {
        'vim',
        'lua',
        'vimdoc',
        'html',
        'css',
      },
    },
  },

  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      {
        'zbirenbaum/copilot-cmp',
        config = function()
          require('copilot_cmp').setup()
        end,
      },
    },
    opts = {
      sources = {
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
        { name = 'buffer' },
        { name = 'nvim_lua' },
        { name = 'path' },
        { name = 'copilot' },
      },
    },
  },

  {
    'zbirenbaum/copilot.lua',
    cmd = 'Copilot',
    event = 'InsertEnter',
    config = function()
      require('copilot').setup()
    end,
    opts = {
      suggestion = {
        enabled = false,
      },
      panel = {
        enabled = false,
      },
    },
  },

  {
    'zbirenbaum/copilot-cmp',
    config = function()
      require('copilot_cmp').setup()
    end,
  },

  -- {
  --   'github/copilot.vim',
  --   lazy = false,
  -- },
}
