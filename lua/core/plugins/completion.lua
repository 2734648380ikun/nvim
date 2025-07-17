local kind_icons = {
	Text = "  ",
	Method = "  ",
	Function = "  ",
	Constructor = "  ",
	Field = "  ",
	Variable = "  ",
	Class = "  ",
	Interface = "  ",
	Module = "  ",
	Property = "  ",
	Unit = "  ",
	Value = "  ",
	Enum = "  ",
	Keyword = "  ",
	Snippet = "  ",
	Color = "  ",
	File = "  ",
	Reference = "  ",
	Folder = "  ",
	EnumMember = "  ",
	Constant = "  ",
	Struct = "  ",
	Event = "  ",
	Operator = "  ",
	TypeParameter = "  ",
}

return {
	{
		"hrsh7th/cmp-nvim-lsp",
	},
	{
		"L3MON4D3/LuaSnip",
		build = "make install_jsregexp",
		event = "VeryLazy",
		dependencies = {
			"saadparwaiz1/cmp_luasnip",
			"rafamadriz/friendly-snippets",
		},
	},
	{
		"hrsh7th/cmp-path"
	},
	{
		"hrsh7th/cmp-buffer"
	},
	{
		"hrsh7th/cmp-nvim-lua"
	},
	{
		"hrsh7th/nvim-cmp",
		event = { "InsertEnter", "CmdlineEnter" },
		config = function()
			local cmp = require("cmp")
			local ls = require("luasnip")
			-- Customization for Pmenu
			cmp.setup({
				snippet = {
					expand = function(args)
						require("luasnip").lsp_expand(args.body)
					end,
				},
				window = {
					completion = cmp.config.window.bordered({

					}),
					documentation = cmp.config.window.bordered(),
				},
				formatting = {
					format = function(entry, vim_item)
						-- Kind icons
						vim_item.kind = string.format("%s %s", kind_icons[vim_item.kind], vim_item.kind)
						-- Source
						vim_item.menu = ({
							buffer = "[Buffer]",
							nvim_lsp = "[LSP]",
							luasnip = "[LuaSnip]",
							nvim_lua = "[Nvim_Lua]",
							latex_symbols = "[LaTeX]",
						})[entry.source.name]
						return vim_item
					end,
				},
				mapping = cmp.mapping.preset.insert({
					['<Tab>'] = cmp.mapping(function(fallback)
						if cmp.visible() then
							cmp.select_next_item()
						else
							fallback()
						end
					end, { "i", "s" }),
					['<S-Tab>'] = cmp.mapping(function(fallback)
						if cmp.visible() then
							cmp.select_prev_item()
						else
							fallback()
						end
					end, { "i", "s" }),
					['<CR>'] = cmp.mapping(function(fallback)
						if cmp.visible() then
							if ls.expandable() then
								ls.expand({})
							else
								cmp.confirm({
									select = true,
								})
							end
						else
							fallback()
						end
					end, { "i", "s" }),
					['<C-j>'] = cmp.mapping(function(fallback)
						if (ls.expand_or_locally_jumpable()) then
							ls.expand_or_jump();
						else
							fallback()
						end
					end, { "i", "s" }),
					['<C-l>'] = cmp.mapping(function(fallback)
						if (ls.expandable()) then
							ls.expand({})
						else
							fallback()
						end
					end, { "i", "s" }),
					['<C-k>'] = cmp.mapping(function(fallback)
						if (ls.locally_jumpable(-1)) then
							ls.jump(-1)
						else
							fallback();
						end
					end, { "i", "s" }),
					['<C-c>'] = cmp.mapping(function(fallback)
						if (ls.choice_active()) then
							ls.change_choice(1);
						else
							fallback();
						end
					end, { "i", "s" }),
				}),
				sources = cmp.config.sources({
					--来自nvim-luasnip
					{
						name = "luasnip",
					},
					--来自lsp
					{
						name = "nvim_lsp",
					},
					--来自buffer
					{
						name = "buffer",
					},

					{
						name = "render-markdown",
					},

					--来自cmp-nvim-lua
					{
						name = "nvim_lua",
					},

					--来自nvim-path
					{ name = "path" },
					-- { name = "codeium" },
				}),
			})
			require("luasnip.loaders.from_vscode").lazy_load()
		end,
	},
}
