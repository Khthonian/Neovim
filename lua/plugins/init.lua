return {
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
        'clang_format',
        'clangd',
        'cpplint',
        'eslint_d',
        'html',
        'isort',
        'lua_language_server',
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
}
