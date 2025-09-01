-- LSPs list
local servers = {
	"lua_ls",
	-- "pylsp",
	-- "clangd",
	-- "csharp_ls",
}

return {
	{
		-- if it complains about registries, try to run:
		-- curl https://api.mason-registry.dev/
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup({
				ui = {
					border = "rounded"
				}
			})
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = servers,
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
	},
}
