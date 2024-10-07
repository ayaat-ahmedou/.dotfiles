-- luacheck: ignore vim
return {
    "project0n/github-nvim-theme",
    lazy = false, --make sure we load this during the startup if it is in your main
    priority = 1000, --make sure to load this before all the other start plug
    config = function()
        require("github-theme").setup({})
        vim.cmd('colorscheme gitub_dark_default')
    end
}