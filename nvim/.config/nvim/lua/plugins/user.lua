-- You can also add or configure plugins by creating files in this `plugins/` folder
-- PLEASE REMOVE THE EXAMPLES YOU HAVE NO INTEREST IN BEFORE ENABLING THIS FILE
-- Here are some examples:

---@type LazySpec
return {
	{
		"folke/snacks.nvim",
		---@type snacks.Config
		opts = {
			dashboard = {
				preset = {
					header = table.concat({
						" █████  ███████ ████████ ██████   ██████ ",
						"██   ██ ██         ██    ██   ██ ██    ██",
						"███████ ███████    ██    ██████  ██    ██",
						"██   ██      ██    ██    ██   ██ ██    ██",
						"██   ██ ███████    ██    ██   ██  ██████ ",
						"",
						"███    ██ ██    ██ ██ ███    ███",
						"████   ██ ██    ██ ██ ████  ████",
						"██ ██  ██ ██    ██ ██ ██ ████ ██",
						"██  ██ ██  ██  ██  ██ ██  ██  ██",
						"██   ████   ████   ██ ██      ██",
					}, "\n"),
				},
			},
		},
	},

	{
		"Saghen/blink.cmp",
		optional = true,
		opts = function(_, opts)
			opts.keymap = opts.keymap or {}

			-- Keep normal tab behavior for snippets
			opts.keymap["<Tab>"] = { "snippet_forward", "fallback" }
			opts.keymap["<S-Tab>"] = { "snippet_backward", "fallback" }

			-- Use Ctrl-Tab for AI completion
			opts.keymap["<C-Tab>"] = {
				function()
					if vim.g.ai_accept then
						return vim.g.ai_accept()
					end
				end,
				"fallback",
			}
		end,
	},
}
