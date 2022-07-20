require("nvim-lsp-installer").setup({
    automatic_installation = true, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
    ui = {
        icons = {
            server_installed = "✓",
            server_pending = "➜",
            server_uninstalled = "✗"
        }
    }
})

require('lspconfig').bashls.setup{}
require('lspconfig').clangd.setup{}
require('lspconfig').cmake.setup{}
require('lspconfig').cssls.setup{}
require('lspconfig').dockerls.setup{}
require('lspconfig').html.setup{}
require('lspconfig').jsonls.setup{}
require('lspconfig').tsserver.setup{}
require('lspconfig').pyright.setup{}
require('lspconfig').rust_analyzer.setup{}
require('lspconfig').svelte.setup{}
require('lspconfig').sumneko_lua.setup{}
require('lspconfig').tailwindcss.setup{}
