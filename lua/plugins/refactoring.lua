return {
  "ThePrimeagen/refactoring.nvim",
  version = "*",

  dependencies = {
    "lewis6991/async.nvim",
  },
  config = function()
    local refactoring = require("refactoring")
    refactoring.setup({})
  end,
}
