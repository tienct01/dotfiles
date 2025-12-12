if vim.g.vscode then return {} end
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
					}, "\n"),
				},
			},
		},
	},
	{ "nvim-tree/nvim-web-devicons", opts = {} },

	{
		"saghen/blink.cmp",
		opts = function(_, opts)
			-- Remove Tab & Shift-Tab mappings
			opts.keymap["<Tab>"] = nil
			opts.keymap["<S-Tab>"] = nil

			-- ✅ Always select the FIRST item when menu opens
			opts.completion = opts.completion or {}
			opts.completion.list = opts.completion.list or {}
			opts.completion.list.selection = {
				preselect = true, -- auto highlight first item
				auto_insert = false, -- do NOT auto confirm
			}

			return opts
		end,
	},
}
