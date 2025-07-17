return {
	-- Lazy
	"olimorris/onedarkpro.nvim",
	priority = 1000, -- Ensure it loads first_lin
	config = function()
		-- somewhere in your config:
		vim.cmd("colorscheme onedark")
	end

	-- 	"scottmckendry/cyberdream.nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	opts = {
	-- 		transparent = true,
	-- 	}
	-- },
	-- -- Using Lazy
	-- {
	-- 	"navarasu/onedark.nvim",
	-- 	priority = 1000, -- make sure to load this before all the other start plugins
	-- 	config = function()
	-- 		require('onedark').setup {
	-- 			style = 'dark'
	-- 		}
	-- 		-- Enable theme
	-- 		require('onedark').load()
	-- 	end
	-- }
}
