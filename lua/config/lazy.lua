-- Path Setup for LazyVim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    -- Bootstrap lazy.nvim
    -- stylua: ignore
    vim.fn.system(
        {"git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath}
    )
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

-- LazyVim Configuration
require("lazy").setup({
    spec = {
        -- LazyVim and its plugins
        {"LazyVim/LazyVim", import = "lazyvim.plugins"},
        
        -- Extra Modules
        {import = "lazyvim.plugins.extras.lang.typescript"},
        {import = "lazyvim.plugins.extras.lang.json"},
        {import = "lazyvim.plugins.extras.ui.mini-animate"},
        {import = "lazyvim.plugins.extras.lang.go"},
        {import = "lazyvim.plugins.extras.lang.tailwind"},
        {import = "lazyvim.plugins.extras.ui.alpha"},
        
        -- Custom Plugin Imports
        {import = "plugins"}
    },
    defaults = {
        lazy = false, -- Default lazy-loading behavior
        version = false -- Use latest git commit for plugins
    },
    install = {
        colorscheme = {"tokyonight", "habamax", "catppuccin"} -- Color schemes
    },
    checker = {
        enabled = true -- Automatic plugin updates
    },
    performance = {
        rtp = {
            -- Disabled runtime plugins
            disabled_plugins = {
                "gzip",
                "tarPlugin",
                "tohtml",
                "tutor",
                "zipPlugin"
            }
        }
    }
})
