return {
	'stevearc/overseer.nvim',
	opts = {
	},
	config = function()
		local ovs = require("overseer")
		ovs.setup({
			task_list = {
				bindings = {
					["q"] = false,
					["<Esc><Esc>"] = "Close"
				}
			},
			task_editor = {
				-- Set keymap to false to remove default behavior
				-- You can add custom keymaps here as well (anything vim.keymap.set accepts)
				bindings = {
					n = {
						["q"] = false,
						["<Esc><Esc>"] = "Cancel",
					},
				},
			}
		})
	end
}
