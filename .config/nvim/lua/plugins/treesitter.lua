-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      -- 🧠 Core languages
      "lua",
      "vim",
      "vimdoc",
      "query",
      "bash",
      "json",
      "yaml",
      "toml",

      -- 🌐 Web development
      "html",
      "css",
      "scss",
      "javascript",
      "typescript",
      "tsx", -- React / Next.js JSX
      "vue",
      "svelte",
      "astro", -- Astro framework support
      "graphql",

      -- 🧩 Templates & markup
      "markdown",
      "markdown_inline",
      "prisma",

      -- 🧰 Optional utils
      "regex",
      "dockerfile",
      "gitignore",
    },
  },
}
