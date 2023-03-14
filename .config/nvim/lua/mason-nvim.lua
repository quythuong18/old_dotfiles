require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = { "rust_analyzer", "clangd", "tsserver", "sqls" },
    automatic_installation = true,
}
