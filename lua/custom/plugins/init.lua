-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
    {
      "pmizio/typescript-tools.nvim",
      dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
      opts = {
          settings = {
              -- Disable formatting
              formatting = {
                  enable = false
              },
              -- Disable auto import organization
              tsserver = {
                  formatOnType = false,
                  organizeImportsOnSave = false
              }
          },
          on_attach = function(client)
              client.server_capabilities.documentFormattingProvider = false
              client.server_capabilities.documentRangeFormattingProvider = false
          end
      },
    },
}
