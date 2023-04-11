require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = { "rust_analyzer", "clangd", "tsserver", "sqls", "marksman", "html", "cssls"},
    automatic_installation = true,
}
