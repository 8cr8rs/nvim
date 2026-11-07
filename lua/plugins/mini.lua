return {
  {
    "nvim-mini/mini.nvim",
    version = "*",

    config = function()
      -- If a mini module is more than just require("mini.xyz").setup(), then
      -- it will be located in the 'mini' folder with its own config file.

      -- Allows more textobjects to be worked with
      -- e.g: cif = change inner function
      require("mini.ai").setup()

      -- Use ga for align
      require("mini.align").setup()

      -- Use gc for comment
      require("mini.comment").setup()
      require("mini.diff").setup()
      require("mini.git").setup()

      -- Creating bracket pairs
      require("mini.pairs").setup()

      -- Surround bracket actions
      require("mini.surround").setup()

      -- Show trailing space in file
      require("mini.trailspace").setup()

      require("plugins.mini.base16")
      require("plugins.mini.clue")
      require("plugins.mini.files")
      require("plugins.mini.hipatterns")
      require("plugins.mini.icons")
      require("plugins.mini.indentscope")
      require("plugins.mini.statusline")
    end,
  },
}
