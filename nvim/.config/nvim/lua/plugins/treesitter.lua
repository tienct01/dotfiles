-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      -- 🧠 Core languages
      "lua",
      "vim",
      "bash",
      "json",
      "yaml",
      "toml",

      -- 🌐 Web development
      "html",
      "css",
      "javascript",
      "typescript",
      "tsx", -- React / Next.js JSX
      "graphql",

      -- 🧩 Templates & markup
      "markdown",
      "prisma",

      -- 🧰 Optional utils
      "regex",
      "dockerfile",
      "gitignore",
    },
  },
}
