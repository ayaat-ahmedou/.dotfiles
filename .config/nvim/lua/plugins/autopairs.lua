-- luacheck: ignore vim
return {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup({
          event = "InsertEnter",
          disable_filetype = { "TelescopePrompt", "vim" },
          check_ts = true,
      })
    end
  }
  