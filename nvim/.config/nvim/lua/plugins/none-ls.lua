if true then return {} end
-- Customize None-ls sources

---@type LazySpec
return {
	"nvimtools/none-ls.nvim",
	opts = function(_, opts)
		-- opts variable is the default configuration table for the setup function call
		-- local null_ls = require("null-ls")

		-- Check supported formatters and linters
		-- https://github.com/nvimtools/none-ls.nvim/tree/main/lua/null-ls/builtins/formatting
		-- https://github.com/nvimtools/none-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics

		-- Only insert new sources, do not replace the existing ones
		-- (If you wish to replace, use `opts.sources = {}` instead of the `list_insert_unique` function)

		local helpers = require("null-ls.helpers")
		local methods = require("null-ls.methods")

		local function resolve_prettier()
			local cwd = vim.fn.getcwd()

			local local_prettier = cwd .. "/node_modules/.bin/prettier"
			if vim.fn.executable(local_prettier) == 1 then
				return local_prettier
			end

			-- fallback to global / mason
			if vim.fn.executable("prettier") == 1 then
				return "prettier"
			end

			return nil
		end

		local prettier_cmd = resolve_prettier()

		-- Custom liquid formatter
		local liquid_formatter = helpers.make_builtin({
			name = "liquid-prettier",
			meta = {
				url = "https://github.com/Shopify/prettier-plugin-liquid",
				description = "Format Liquid using prettier-plugin-liquid",
			},
			method = methods.internal.FORMATTING,
			filetypes = { "liquid" },
			generator_opts = {
				command = prettier_cmd,
				args = {
					"--plugin=prettier-plugin-liquid",
					"--stdin-filepath",
					"$FILENAME",
				},
				to_stdin = true,
			},
			factory = helpers.formatter_factory,
		})

		opts.sources = require("astrocore").list_insert_unique(opts.sources, {
			liquid_formatter,
		})
	end,
}
