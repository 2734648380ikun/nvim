return {
	{
		"rcarriga/nvim-notify",
		lazy = false,
		config = function()
			local notify = require("notify")
			-- 覆盖 vim.notify
			vim.notify = notify

			notify.setup({
				timeout = 1000,
				width = 40,
				height = 5,
				max_width = 50,
				max_height = 90,
				stages = "static",
				top_down = false,
				level = 1,
				fps = 5,
				notify_render = "minimal",
				opacity = 50,
			})
		end,
	},
	-- {
	-- 	"mrded/nvim-lsp-notify",
	-- 	requires = { "rcarriga/nvim-notify" },
	-- 	lazy = false,
	-- 	config = function()
	-- 		require("lsp-notify").setup({
	-- 			notify = require("notify"),
	-- 		})
	-- 	end,
	-- },
}
