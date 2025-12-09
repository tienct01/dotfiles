return {
	"mfussenegger/nvim-dap",
	config = function()
		local dap = require("dap")
		dap.adapters["pwa-node"] = {
			type = "server",
			host = "127.0.0.1",
			port = "${port}",
			executable = {
				command = "node",
				args = {
					vim.fn.stdpath("data") .. "/mason/packages/js-debug-adapter/js-debug/src/dapDebugServer.js",
					"${port}",
				},
			},
		}

		------------------------------------------------------------------
		-- Typescript Debug Config
		------------------------------------------------------------------
		dap.configurations.typescript = {
			{
				name = "Run TS Program (Node + Sourcemaps)",
				type = "pwa-node",
				request = "launch",

				-- File bạn bấm F5
				program = "${workspaceFolder}/dist/${fileBasenameNoExtension}.js",
				cwd = "${workspaceFolder}",

				-- để js-debug map .ts <-> .js
				sourceMaps = true,
				resolveSourceMapLocations = {
					"${workspaceFolder}/dist/**/*.js",
					"${workspaceFolder}/src/**/*.ts",
					"!**/node_modules/**",
				},

				-- thư mục output sau build
				outFiles = { "${workspaceFolder}/dist/**/*.js" },

				protocol = "inspector",
				console = "integratedTerminal",
			},
		}
	end,
}
