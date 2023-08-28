require('Comment').setup()

require('notify').setup({
    render = 'minimal',
    background_colour = "#282828",
    stages = 'fade',
})
-- require("noice").setup({
--     lsp = {
--         progress = {
--             enabled = false,
--         },
--         -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
--         override = {
--             ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
--             ["vim.lsp.util.stylize_markdown"] = true,
--             ["cmp.entry.get_documentation"] = true,
--         },
--     },
--     -- you can enable a preset for easier configuration
--     presets = {
--         bottom_search = true, -- use a classic bottom cmdline for search
--         command_palette = true, -- position the cmdline and popupmenu together
--         long_message_to_split = false, -- long messages will be sent to a split
--         inc_rename = false, -- enables an input dialog for inc-rename.nvim
--         lsp_doc_border = true, -- add a border to hover docs and signature help
--     },
--     messages = {
--         enabled = true,
--         max_length = 20,
--     },
--     commands = {
--         history = {
--             view = 'popup',
--         }
--     },
--     cmdline = {
--         enabled = true,
--         view = "cmdline",
--     },
-- })
-- indentation guides
require("indent_blankline").setup {
    -- for example, context is off by default, use this to turn it on
    char = '│',
    show_current_context = true,
}
-- speech motions
require'hop'.setup()

