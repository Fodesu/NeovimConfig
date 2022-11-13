require('init-packer')
require('init-lsp')
require('init-mason')
require('nvim-tree').setup()
require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "sumneko_lua", "rust_analyzer", "clangd" }
})
vim.o.number = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.termguicolors = true
vim.o.cursorline = true
vim.cmd
[[
    augroup change_cursor
        au!
        au ExitPre * :set guicursor=a:ver90
    augroup END
]]
