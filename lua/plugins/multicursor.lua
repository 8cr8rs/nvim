return {
  "jake-stewart/multicursor.nvim",
  version = "*",

  config = function()
    local multicursor = require("multicursor-nvim")

    multicursor.setup()

    -- Add one cursor up
    vim.keymap.set({ "n", "x" }, "<C-Up>", function()
      multicursor.lineAddCursor(-1)
    end)

    -- Add one cursor down
    vim.keymap.set({ "n", "x" }, "<C-Down>", function()
      multicursor.lineAddCursor(1)
    end)

    -- Map on top of esc key
    -- Clears all cursors except main one
    multicursor.addKeymapLayer(function(layerSet)
      layerSet("n", "<Esc>", multicursor.clearCursors)
    end)
  end,
}
