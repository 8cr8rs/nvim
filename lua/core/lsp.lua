local capabilities = require("blink.cmp").get_lsp_capabilities()

vim.lsp.config("*", {
  capabilities = capabilities,
  root_markers = { ".git" },
})

-- Ensures that parentheses don't pick up any weird indentation patterns from
-- previous lines
vim.g.python_indent = {
  open_paren = "shiftwidth()",
  continue = "shiftwidth()",
  closed_paren_align_last_line = false,
}
