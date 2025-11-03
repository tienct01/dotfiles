-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  -- import/override with your plugins folder
  { import = "astrocommunity.color.transparent-nvim" },
  { import = "astrocommunity.completion.copilot-vim" },
  { import = "astrocommunity.recipes.vscode" },
  { import = "astrocommunity.motion.flash-nvim" },
  { import = "astrocommunity.utility.noice-nvim" },
  { import = "astrocommunity.editing-support.vim-visual-multi" },
}
