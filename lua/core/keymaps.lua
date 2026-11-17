local keymap = vim.keymap.set

-- Remove default functionality for the space key
keymap("n", "<Space>", "<Nop>", { silent = true })

-- ==========
-- Navigation
-- ==========

-- word movement
keymap({ "n", "x" }, "<S-w>", "b", { silent = true })
keymap({ "n", "x" }, "<S-e>", "ge", { silent = true })

-- line movement
keymap({ "n", "x" }, "<S-CR>", "<BS>", { silent = true })
keymap({ "n", "x" }, "<S-BS>", "<CR>", { silent = true })

-- LSP-related
keymap("n", "<leader><F2>", vim.lsp.buf.rename, { desc = "Rename symbol" })
