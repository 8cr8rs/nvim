return {
  "nvim-telescope/telescope.nvim",
  version = "*",

  dependencies = {
    "nvim-lua/plenary.nvim",
  },

  config = function()
    local keymap = vim.keymap.set

    require("telescope").setup({
      defaults = {},
      pickers = {
        find_files = {
          -- Don't include .git folder in search results
          find_command = {
            "rg",
            "--files",
            "--hidden",
            "--glob", "!**/.git/*",
          },
        },
      },
    })

    local telescope_builtin = require("telescope.builtin")

    keymap("n", "<leader>ff", function()
        telescope_builtin.find_files({ hidden = true, no_ignore = false })
      end,
      { desc = "Telescope: Find Files" }
    )

    keymap("n", "<leader>fg",
      telescope_builtin.live_grep,
      { desc = "Telescope: Find with Grep" }
    )

    keymap("n", "<leader>fb",
      telescope_builtin.buffers,
      { desc = "Telescope: Find Buffers" }
    )

    keymap("n", "<leader>fh",
      telescope_builtin.help_tags,
      { desc = "Telescope: Find Help" }
    )
  end,
}
