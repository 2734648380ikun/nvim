return {
	"zbirenbaum/copilot.lua",
	cmd = "Copilot",
	event = "InsertEnter",
	config = function()
		require("copilot").setup {
			filetypes = {
				cs = true,
				cpp = true,
				["*"] = false, -- disable for all other filetypes and ignore default `filetypes`
			},
			suggestion = {
			enabled = true,
			auto_trigger = true,
			hide_during_completion = true,
			debounce = 75,
			trigger_on_accept = true,
			keymap = {
				accept = "<M-j>",
				accept_word = false,
				accept_line = false,
				next = "<M-]>",
				prev = "<M-[>",
				dismiss = "<M-d>",
			},

		},
		}
	end,
}
