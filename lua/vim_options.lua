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

-- Sets the number of screen lines to keep above and below the cursor
vim.o.scrolloff = 999

-- Sets the number of screen columns to keep to the left and right of the cursor
vim.o.sidescrolloff = 999
