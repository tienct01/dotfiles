return {
	"jay-babu/mason-nvim-dap.nvim",
	opts = {
		ensure_installed = { "js-debug-adapter" },
		handlers = {
			js = function()
				local dap = require("dap")

				dap.set_log_level("TRACE")

				local js_debug_path = vim.fn.stdpath("data")
						.. "/mason/packages/js-debug-adapter/js-debug/src/dapDebugServer.js"

				dap.adapters["pwa-node"] = {
					type = "server",
					host = "127.0.0.1",
					port = "${port}",
					executable = {
						command = "node",
						args = {
							js_debug_path,
							"${port}",
						},
					},
				}

				dap.configurations.javascript = {
					{
						type = "pwa-node",
						request = "launch",
						name = "Launch file",
						program = "${file}",
						cwd = "${workspaceFolder}",
					},
					{
						type = "pwa-node",
						request = "attach",
						name = "Attach to process ID",
						processId = require("dap.utils").pick_process,
						cwd = "${workspaceFolder}",
					},
				}

				-- dùng chung cho TypeScript
				dap.configurations.typescript = dap.configurations.javascript
			end,
		},
	},
}
