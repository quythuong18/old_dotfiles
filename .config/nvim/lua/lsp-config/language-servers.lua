
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
  end,
})

-- Python language server
require('lspconfig')['pyright'].setup{
    autostart = true;
}
-- C/C++ language server
require('lspconfig')['clangd'].setup{
    autostart = true;
}
-- Lua language server
require'lspconfig'.lua_ls.setup {
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}
-- html
local lspconfig = require('lspconfig')
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
require'lspconfig'.html.setup{
    capabilities = capabilities,
    init_options = {
        configurationSection = { "html", "css", "javascript" },
        embeddedLanguages = {
            css = false,
            javascript = true
        },
        provideFormatter = true
    }
}
-- CSS 
require'lspconfig'.cssmodules_ls.setup{}
-- HTML CSS autocomplete
lspconfig.emmet_ls.setup({
    capabilities = capabilities,
    filetypes = { 'html', 'typescriptreact', 'javascriptreact', 'css', 'sass', 'scss', 'less' },
    init_options = {
      html = {
        options = {
          -- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
          ["bem.enabled"] = true,
        },
      },
    }
})
-- JS TS LSP
require('lspconfig')['tsserver'].setup{
    autostart = true;
    filetype = {  "html", "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx"}
}
