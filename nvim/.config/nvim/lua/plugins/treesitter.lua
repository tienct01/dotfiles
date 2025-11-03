-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      -- add more arguments for adding more treesitter parsers

      -- Core
      "html",
      "css",
      "scss",
      "javascript",
      "typescript",
      "tsx",
      "json",

      -- Backend / templating (optional)
      "yaml",
      "graphql",
      "regex",

      -- Utilities
      "bash",
      "markdown",
      "markdown_inline",
    },
  },
}
