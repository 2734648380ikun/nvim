return {
	"olimorris/codecompanion.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-treesitter/nvim-treesitter",
	},
	opts = {
		language = "Chinese",
		strategies = {
			chat = {
				adapter = "deepseek",
			},
			inline = {
				adapter = "deepseek",
			},
		},
	}
}
