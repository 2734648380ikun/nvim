return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	opts = {
		defaults = {
			mappings = {
				-- i = {
				-- }
				n = {
					["<Esc><Esc>"] = "close",
					["<Esc>"] = false,
				}
			},
		},
		pickers = {
			find_files = {
				theme = "dropdown",
			},
			live_grep = {
				theme = "dropdown"
			}
		}

	},
	-- config = function()
	-- end,
}
