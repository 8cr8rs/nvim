local keymap = vim.keymap.set

-- Remove default functionality for the space key
keymap("n", "<Space>", "<Nop>", { silent = true })

-- =============
-- Configuration
-- =============

keymap(
  "n",
  "<leader>ln",
  ":set relativenumber!<CR>",
  { silent = true, desc = "Toggle relative line numbers" }
)

-- ==========
-- Navigation
-- ==========

-- word movement
keymap({ "n", "x" }, "<S-w>", "b", { silent = true })
keymap({ "n", "x" }, "<S-e>", "ge", { silent = true })

-- line movement
keymap({ "n", "x" }, "<S-CR>", "<BS>", { silent = true })
keymap({ "n", "x" }, "<S-BS>", "<CR>", { silent = true })

-- relative line movement
keymap(
  { "n", "x" },
  "gg",
  function()
    if vim.opt.relativenumber:get() and vim.v.count > 0 then
      return "k"
    else
      return "gg"
    end
  end,
  { expr = true, desc = "Jump to beginning of file or line number (displayed)" }
)

keymap({ "n", "x" }, "G", function()
  if vim.opt.relativenumber:get() and vim.v.count > 0 then
    return "j"
  else
    return "G"
  end
end, { expr = true, desc = "Jump to end of file or line number (displayed)" })

-- LSP-related
keymap("n", "<leader><F2>", vim.lsp.buf.rename, { desc = "Rename symbol" })
