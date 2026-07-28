-- AstroLSP allows you to customize the features in AstroNvim's LSP configuration engine
-- Configuration documentation can be found with `:h astrolsp`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
	{
		"b0o/schemastore.nvim",
	},
	{
		"AstroNvim/astrolsp",
		---@type AstroLSPOpts
		opts = {
			features = {
				codelens = true,
			},
			formatting = {
				format_on_save = {
					enabled = false,
					allow_filetypes = {
						"lua",
					},
					ignore_filetypes = {},
				},
				disabled = {},
				timeout_ms = 1000,
			},
			servers = {
				"jsonls",
				"shopify_theme_ls",
				"gitlab_ci_ls",
			},
			config = {
				jsonls = {
					settings = {
						json = {
							schemas = require("schemastore").json.schemas(),
							validate = { enable = true },
						},
					},
				},
				graphql = {
					filetypes = { "graphql", "typescriptreact", "javascriptreact", "typescript" },
				},
				shopify_theme_ls = {
					root_dir = function(bufnr, callback)
						callback(vim.fs.root(bufnr, {
							"shopify.app.toml",
							"shopify.theme.toml",
							".shopifyignore",
							".theme-check.yml",
							".theme-check.yaml",
						}))
					end,
				},
			},
		},
	},
}
