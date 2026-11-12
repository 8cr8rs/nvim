return {
  "nvim-treesitter/nvim-treesitter-textobjects",

  config = function()
    require("nvim-treesitter-textobjects").setup({
      textobjects = {
        select = {
          enable = true,
          lookahead = true,
          keymaps = {
            ["af"] = "@function.outer",
            ["if"] = "@function.inner",
            ["ac"] = "@condition.outer",
            ["ic"] = "@condition.inner",
            ["aP"] = "@parameter.outer",
            ["iP"] = "@parameter.inner",
          },
          selection_modes = {
            ["@parameter.outer"] = "v",
            ["@function.outer"] = "V",
            ["@class.outer"] = "<c-v>",
          },
        },
      },
    })
  end,
}
