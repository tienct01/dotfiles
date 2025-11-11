-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  -- import/override with your plugins folder
  -- Language pack
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.pack.prettier" },
  { import = "astrocommunity.pack.eslint" },
  { import = "astrocommunity.pack.prisma" },

  -- Others
  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  { import = "astrocommunity.recipes.heirline-mode-text-status-line" },
  { import = "astrocommunity.search.nvim-spectre" },
  { import = "astrocommunity.completion.copilot-vim" },
  { import = "astrocommunity.utility.noice-nvim" },
  { import = "astrocommunity.motion.flash-nvim" },
}
