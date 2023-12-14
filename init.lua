-- Bootstrap LazyVim and other plugins
require("config.lazy")



-- =========================================
-- Autocommands
-- =========================================

-- Sets up filetype-specific settings for indentation and tab behavior
vim.api.nvim_create_autocmd("FileType", {
    pattern = "go",
    command = "setlocal tabstop=8 shiftwidth=8",
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = "javascript",
    command = "setlocal tabstop=4 shiftwidth=4",
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = "html",
    command = "setlocal tabstop=2 shiftwidth=2",
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = "css",
    command = "setlocal tabstop=2 shiftwidth=2",
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = "lua",
    command = "setlocal tabstop=8 shiftwidth=8",
})



