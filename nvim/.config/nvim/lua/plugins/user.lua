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

	{
		"saghen/blink.cmp",
		---@module 'blink-cmp'
		---@param opts blink.cmp.Config
		opts = function(_, opts)
			-- Remove Tab & Shift-Tab mappings
			opts.keymap["<Tab>"] = nil
			opts.keymap["<S-Tab>"] = nil

			opts.completion.accept.auto_brackets.enabled = false
		end,
	},
}
