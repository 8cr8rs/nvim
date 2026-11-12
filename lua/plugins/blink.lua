return {
  {
    "saghen/blink.cmp",
    version = "*",

    dependencies = {
      -- Put snippets repos here
      "saghen/blink.lib",
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
