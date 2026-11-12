-- =======
-- Globals
-- =======

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- =======
-- Options
-- =======

-- # Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- # Tabs and indentation
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- Indent when using bracket pairs
vim.opt.autoindent = true
vim.opt.smartindent = true

-- # Search
-- Highlighting search results
-- It helps to see the next one to jump to with n
vim.opt.hlsearch = true

-- Don't search until user actually presses <CR>
-- This keep nvim from lagging or making redundant searches
vim.opt.incsearch = false

-- # Visual guides
-- Shows current cursor line as a horizontal bar
vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"

-- Always show the sign column so text doesn't shift when escaping
vim.opt.signcolumn = "yes"

-- Shows a vertical guide 1 character past textwidth
vim.opt.textwidth = 80
vim.opt.colorcolumn = "+1"

-- # Formatting
vim.opt.formatoptions = "tcr"

-- Colors
-- Forces 24 bit color support
-- This only reminds supporting terminals to use 24-bit color, but shell
-- terminals will still default to ANSI
vim.opt.termguicolors = true

-- ================
-- UNSORTED OPTIONS
-- ================

-- vim.opt.guicursor = ""

-- Ensures there is always n lines above and below the cursor
-- Mitigates having to backtrack when scrolling
vim.wo.scrolloff = 16

-- Text soft wrapping
vim.wo.wrap = true
vim.wo.linebreak = true
vim.wo.breakindent = true

-- ========
-- autocmds
-- ========

vim.api.nvim_create_autocmd("BufWritePre", {
  desc = "Trim trailing whitespace in buffer.",
  pattern = "*",
  callback = function()
    -- not sure why we're keeping the cursor pos but whatever
    local cursor = vim.api.nvim_win_get_cursor(0)
    vim.cmd([[keeppatterns %s/\s\+$//e]])
    vim.api.nvim_win_set_cursor(0, cursor)
  end,
})

-- ================
-- external modules
-- ================

-- protected require
-- calls a module but will not halt execution if it fails
local function protected_require(module_name)
  local success, module = pcall(require, module_name)

  if not success then
    vim.notify("Failed to load " .. module_name, vim.log.levels.ERROR)
  else
    return module
  end
end

protected_require("core.keymaps")
protected_require("core.lazy")
protected_require("core.lsp")
