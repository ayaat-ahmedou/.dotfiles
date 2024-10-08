-- you need to have NPM loaded for the TS LSP server, so ensure it it installed
-- sudo apt install npm -y

return {
    {
      "williamboman/mason.nvim",
      lazy = false,
      config = function()
        require("mason").setup()
      end
    },
    {
      "williamboman/mason-lspconfig.nvim",
      lazy = false,
      config = function()
        require("mason-lspconfig").setup({
          ensure_installed = {"lua_ls", "bashls", "ts_ls", "jdtls"},
        })
      end
    },
    {
      "neovim/nvim-lspconfig",
      lazy = false,
      config = function()
        local lspconfig = require("lspconfig")
        
        lspconfig.lua_ls.setup({})
        lspconfig.bashls.setup({})
        lspconfig.ts_ls.setup({})
        lspconfig.jdtls.setup({})
      end
    }
  }
  