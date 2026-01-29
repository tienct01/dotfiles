-- AstroLSP allows you to customize the features in AstroNvim's LSP configuration engine
-- Configuration documentation can be found with `:h astrolsp`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
	{
		"AstroNvim/astrolsp",
		---@type AstroLSPOpts
		opts = {
			features = {
				codelens = true,
			},
			-- customize lsp formatting options
			formatting = {
				-- control auto formatting on save
				format_on_save = {
					enabled = false, -- enable or disable format on save globally
					allow_filetypes = { -- enable format on save for specified filetypes only
						"lua",
					},
					ignore_filetypes = { -- disable format on save for specified filetypes
						-- "python",
					},
				},
				disabled = { -- disable formatting capabilities for the listed language servers
					-- disable lua_ls formatting capability if you want to use StyLua to format your lua code
					-- "lua_ls",
				},
				timeout_ms = 1000, -- default format timeout
				-- filter = function(client) -- fully override the default formatting function
				--   return true
				-- end
			},
		},
	},
	{
		"AstroNvim/astrolsp",
		---@param opts AstroLSPOpts
		opts = function(plugin, opts)
			local util = require("lspconfig.util")

			opts.servers = opts.servers or {}
			table.insert(opts.servers, "shopify_theme_ls")

			opts.config = require("astrocore").extend_tbl(opts.config or {}, {
				graphql = {
					filetypes = { "graphql", "typescriptreact", "javascriptreact", "typescript" },
				},
			})

			opts.config = require("astrocore").extend_tbl(opts.config or {}, {
				shopify_theme_ls = {
					root_dir = util.root_pattern("shopify.app.toml", "shopify.theme.toml", ".shopifyignore", ".theme-check.yml", ".theme-check.yaml"),
				},
			})

			vim.notify(vim.inspect(opts.config))
		end,
	},
}
