-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- {
  --   "pmizio/typescript-tools.nvim",
  --   dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
  --   opts = {
  --       settings = {
  --           -- Disable formatting
  --           formatting = {
  --               enable = false
  --           },
  --           -- Disable auto import organization
  --           tsserver = {
  --               formatOnType = false,
  --               organizeImportsOnSave = false
  --           }
  --       },
  --       -- turns off auto-format on save
  --       -- on_attach = function(client)
  --       --     client.server_capabilities.documentFormattingProvider = false
  --       --     client.server_capabilities.documentRangeFormattingProvider = false
  --       -- end
  --   },
  -- },
  {
    'junegunn/fzf',
    build = './install --all',
    dependencies = {
      'junegunn/fzf.vim',
    },
  },
  -- {
  --   'jay-babu/mason-null-ls.nvim',
  --   event = { 'BufReadPre', 'BufNewFile' },
  --   dependencies = {
  --     'williamboman/mason.nvim',
  --     'nvimtools/none-ls.nvim',
  --   },
  --   config = function()
  --     require 'your.null-ls.config' -- require your null-ls config here (example below)
  --   end,
  -- },

  {
    'neovim/nvim-lspconfig',
    'jose-elias-alvarez/null-ls.nvim',
    'nvim-treesitter/nvim-treesitter',
    {
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
    },
  },
}
