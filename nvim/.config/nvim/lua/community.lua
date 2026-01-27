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
	-- { import = "astrocommunity.pack.prisma" },
	-- { import = "astrocommunity.pack.docker" },
	-- { import = "astrocommunity.pack.go" },

	-- Color schemes
	{ import = "astrocommunity.colorscheme.tokyonight-nvim" },

	-- Completion
	{ import = "astrocommunity.recipes.disable-borders" },

	-- Others
	-- { import = "astrocommunity.completion.copilot-vim" },
	{ import = "astrocommunity.motion.flash-nvim" },
}
