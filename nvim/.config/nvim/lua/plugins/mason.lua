-- Customize Mason
---@type LazySpec
return {
  -- use mason-tool-installer for automatically installing Mason packages
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    -- overrides `require("mason-tool-installer").setup(...)`
    opts = {
      -- Make sure to use the names found in `:Mason`
      ensure_installed = {
        -- install language servers
        "lua-language-server",
        "typescript-language-server", -- TypeScript / JavaScript
        "html-lsp",                 -- HTML
        "css-lsp",                  -- CSS
        "tailwindcss-language-server", -- Tailwind CSS
        "emmet-ls",                 -- Emmet
        "eslint-lsp",               -- ESLint
        "json-lsp",                 -- JSON
        "prisma-language-server",   -- Prisma
        "graphql-language-service-cli", -- GraphQL
        "marksman",                 -- Markdown
        "yaml-language-server",     -- YAML
        "bash-language-server",     -- Bash scripts

        -- install formatters
        "stylua",
        "prettierd", -- Prettier daemon
        "eslint_d",  -- Fast ESLint
        "stylelint-lsp", -- CSS/SCSS lint
        "shfmt",     -- Shell formatter

        -- install debuggers

        -- install any other package
        "tree-sitter-cli",
      },
    },
  },
}
