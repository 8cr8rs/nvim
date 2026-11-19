return {
  {
    "saghen/blink.cmp",
    version = "1.*",

    dependencies = {
      "saghen/blink.lib",
      "rafamadriz/friendly-snippets",
    },

    opts = {
      keymap = {
        ["<Tab>"] = { "select_and_accept", "fallback" },
      },
      sources = {
        -- Don't use buffer suggestion source as it clutters code suggestions.
        default = { "lsp", "path", "snippets" },
      },
      snippets = {
        preset = "default",
      },
      fuzzy = {
        implementation = "prefer_rust",
      },
    },
  },
}
