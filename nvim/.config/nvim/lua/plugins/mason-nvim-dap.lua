return {
	{
		"jay-babu/mason-nvim-dap.nvim",
		opts = {
			handlers = {
				python = function(source_name)
					local dap = require("dap")
					dap.adapters.python = {
						type = "executable",
						command = "/usr/bin/python3",
						args = {
							"-m",
							"debugpy.adapter",
						},
					}

					dap.configurations.python = {
						{
							type = "python",
							request = "launch",
							name = "Launch file",
							program = "${file}", -- This configuration will launch the current file if used.
						},
					}
				end,
				javascript = function()
					local dap = require("dap")

					dap.adapters["pwa-node"] = {
						type = "server",
						host = "localhost",
						port = "${port}",
						executable = {
							command = "node",
							args = {
								require("mason-registry").get_package("js-debug-adapter"):get_install_path()
									.. "/js-debug/src/dapDebugServer.js",
								"${port}",
							},
						},
					}

					dap.configurations.javascript = {
						{
							type = "pwa-node",
							request = "launch",
							name = "Launch current file (Node)",
							program = "${file}",
							cwd = "${workspaceFolder}",
							sourceMaps = true,
							protocol = "inspector",
							console = "integratedTerminal",
						},
						{
							type = "pwa-node",
							request = "attach",
							name = "Attach to process",
							processId = require("dap.utils").pick_process,
							cwd = "${workspaceFolder}",
						},
					}

					-- dùng chung cho TypeScript
					dap.configurations.typescript = dap.configurations.javascript
				end,
			},
		},
	},
}
