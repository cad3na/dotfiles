return {
    "Vigemus/iron.nvim",
	keys = {
		{ "<leader>i", vim.cmd.IronRepl, desc = "󱠤 Toggle REPL" },
		{ "<leader>I", vim.cmd.IronRestart, desc = "󱠤 Restart REPL" },

		-- these keymaps need no right-hand-side, since that is defined by the
		-- plugin config further below
		{ "+", mode = { "n", "x" }, desc = "󱠤 Send-to-REPL Operator" },
		{ "++", desc = "󱠤 Send Line to REPL" },
	},
	-- since irons's setup call is `require("iron.core").setup`, instead of
	-- `require("iron").setup` like other plugins would do, we need to tell
	-- lazy.nvim which module to via the `main` key
	main = "iron.core",
	opts = {
		keymaps = {
			send_line = "++",
			visual_send = "+",
			send_motion = "+",
		},
		config = {
			-- This defines how the repl is opened. Here, we set the REPL window
			-- to open in a horizontal split to the bottom, with a height of 10.
			repl_open_cmd = "horizontal bot 10 split",

			-- IPython from conda env "exploration" (same stack as your project work).
			-- Plain python repl is poor with indents; see iron.nvim#348.
			repl_definition = {
				python = {
					command = {
						"/opt/homebrew/Caskroom/miniconda/base/envs/exploration/bin/ipython",
					},
				},
			},
		},
	}
}
