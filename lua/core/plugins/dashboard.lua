return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	opts = {
		theme = "doom",
		config = {

			week_header = {
				enable = true,
			},

			center = {
				{
					icon = "  ",
					icon_hl = "Title",
					desc = "Find File",
					desc_hl = "String",
					key = "ff",
					keymap = "SPC ff",
					key_hl = "Number",
					key_format = " %s", -- remove default surrounding `[]`
					action = "Telescope find_files",
				},
				{
					icon = "  ",
					desc = "Find Dotfiles",
					key = "fd",
					desc_hl = "String",
					keymap = "SPC gvi",
					key_hl = "Number",
					key_format = " %s", -- remove default surrounding `[]`
					action = "e $VIMRC",
				},
				{
					icon = "  ",
					desc = "Find Oldfiles",
					desc_hl = "String",
					key = "fo",
					keymap = "SPC fo",
					key_format = " %s", -- remove default surrounding `[]`
					key_hl = "Number",
					action = "Telescope oldfiles",
				},
			},
			footer = { "Good Luck!!!" }, --your footer
			vertical_center = true,
		},
	},
	-- config = function()
	-- end,

	dependencies = { { "nvim-tree/nvim-web-devicons" } },
}
