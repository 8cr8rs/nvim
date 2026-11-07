return {
  "nvim-treesitter/nvim-treesitter",
  -- Do NOT set version to "*"
  -- It breaks the parser for whatever reason

  build = ":TSUpdate",
  event = { "BufReadPost", "BufNewFile" },
  config = function()
    require("nvim-treesitter").setup({
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
    })
  end,
}
