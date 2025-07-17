-- LSPs list
local servers = {
	"lua_ls",
	"pylsp",
	"clangd",
	"csharp_ls",
}

return {
	{
		-- if it complains about registries, try to run:
		-- curl https://api.mason-registry.dev/
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup({
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
		-- For completion capabilities
		"hrsh7th/cmp-nvim-lsp",
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")
			-- servers setup
			for _, server in ipairs(servers) do
				lspconfig[server].setup({
					capabilities = capabilities,
				})
			end
		end,
	},
}
