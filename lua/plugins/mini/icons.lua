local mini_icons = require("mini.icons")

local term = vim.env.TERM or ""
local supports_icons = not (term == "dumb" or term == "linux")

mini_icons.setup({
  style = supports_icons and "glyph" or "ascii",
})
