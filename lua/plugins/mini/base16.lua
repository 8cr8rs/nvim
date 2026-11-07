local mini_base16 = require("mini.base16")
local palette

-- 24-bit colors get rounded to the nearest base16 color in terminals
-- which do not support them, often resulting in a monochrome palette.
local COLORTERM = os.getenv("COLORTERM")
if COLORTERM == nil or COLORTERM == "" then
  -- base04 is out of order due to it being used for the statusbar's
  -- text, which is displayed on a light background
  palette = {
    base00 = "#000000", -- Default Background
    base01 = "#000000", -- Lighter Background (Used for status bars)
    base02 = "#808080", -- Selection Background
    base03 = "#808080", -- Comments, Invisible Characters
    base04 = "#000000", -- Dark Foreground
    base05 = "#c0c0c0", -- Default Foreground / Text
    base06 = "#ffffff", -- Light Foreground
    base07 = "#ffffff", -- Lightest Foreground
    base08 = "#ffff00", -- Variables
    base09 = "#ff0000", -- Integers, Boolean
    base0A = "#008000", -- Classes, Types
    base0B = "#00ff00", -- Strings
    base0C = "#800080", -- Support, Regex
    base0D = "#00ffff", -- Functions, Methods
    base0E = "#ff00ff", -- Keywords, Storage
    base0F = "#0000ff"  -- Deprecated
  }
else
  palette = {
    base00 = "#0d1117", -- Default Background
    base01 = "#161b22", -- Lighter Background (Used for status bars)
    base02 = "#21262d", -- Selection Background
    base03 = "#60666d", -- Comments, Invisible Characters
    base04 = "#8b949e", -- Dark Foreground
    base05 = "#c9d1d9", -- Default Foreground / Text
    base06 = "#ecf2f8", -- Light Foreground
    base07 = "#f0f6fc", -- Lightest Foreground
    base08 = "#ff7b72", -- Variables
    base09 = "#f0883e", -- Integers, Boolean
    base0A = "#d29922", -- Classes, Types
    base0B = "#7ee787", -- Strings
    base0C = "#a5d6ff", -- Support, Regex
    base0D = "#58a6ff", -- Functions, Methods
    base0E = "#bc8cff", -- Keywords, Storage
    base0F = "#b18c54", -- Deprecated
  }
  -- palette = mini_base16.mini_palette("#202030", "#e0e0eb", 50)
end

mini_base16.setup({
  palette = palette,
  use_cterm = true,
  plugins = {
    default = false,
    ["nvim-mini/mini.nvim"] = true,
  },
})
