return {
	"folke/which-key.nvim",
	opts = {
		-- border = true,
	},
	config = function()
		local wk = require("which-key")
		wk.setup({
			preset = "helix"
		})
		--用于透明
	end
}
