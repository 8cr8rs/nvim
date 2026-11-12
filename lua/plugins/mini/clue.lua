local mini_clue = require("mini.clue")

mini_clue.setup({
  window = {
    delay = 0,

    -- The suggestions window tends to be not big enough
    config = function(buf_id)
      return {
        anchor = "NE",
        row = 1,
        col = vim.o.columns,
        width = math.min(80, vim.o.columns - 4),
      }
    end,
  },
  triggers = {
    -- any leader
    { mode = "n", keys = "<leader>" },
    { mode = "x", keys = "<leader>" },

    -- idk what this is
    -- built-in completion?
    { mode = "i", keys = "<C-w>" },

    -- any g key
    { mode = "n", keys = "g" },
    { mode = "x", keys = "g" },

    -- marks
    -- stylua: ignore start
    { mode = "n", keys = "\'" },
    { mode = "x", keys = "\'" },
    -- stylua: ignore end
    { mode = "n", keys = "`" },
    { mode = "x", keys = "`" },

    -- registers
    -- stylua: ignore start
    { mode = "n", keys = "\"" },
    { mode = "x", keys = "\"" },
    -- stylua: ignore end
    { mode = "i", keys = "<C-r>" },
    { mode = "c", keys = "<C-r>" },

    -- window commands
    { mode = "n", keys = "<C-w>" },

    -- z key
    { mode = "n", keys = "z" },
    { mode = "x", keys = "z" },
  },
  clues = {
    mini_clue.gen_clues.builtin_completion(),
    mini_clue.gen_clues.g(),
    mini_clue.gen_clues.marks(),
    mini_clue.gen_clues.registers(),
    mini_clue.gen_clues.windows(),
    mini_clue.gen_clues.z(),
  },
})
