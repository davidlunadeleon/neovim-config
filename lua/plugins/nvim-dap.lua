return {
	"mfussenegger/nvim-dap",
	config = function()
		local dap = require('dap')
		dap.adapters.godot = {
			type = "server",
			host = "127.0.0.1",
			port = 6006
		}
		dap.configurations.gdscript = {
			{
				type = "godot",
				request = "launch",
				name = "Launch scene",
				project = "${workspaceFolder}",
			}
		}
	end,
	keys = {
		{ "<leader>dt",  "<cmd>:lua require'dap'.toggle_breakpoint()<cr>", desc = "Toggle breakpoint" },
		{ "<leader>dc",  "<cmd>:lua require'dap'.continue()<cr>",          desc = "Launch debug session and resume execution" },
		{ "<leader>dso", "<cmd>:lua require'dap'.step_over()<cr>",         desc = "Step over" },
		{ "<leader>dsi", "<cmd>:lua require'dap'.step_into()<cr>",         desc = "Step into" },
	}
}
