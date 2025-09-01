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
		-- "yetone/avante.nvim",
		-- -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
		-----⚠️must add this setting! ! !
		-- build = function()
		-- 	-- conditionally use the correct build system for the current OS
		-- 	if vim.fn.has("win32") == 1 then
		-- 		return "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false"
		-- 	else
		-- 		return "make"
		-- 	end
		-- end,
		-- -- event = "VeryLazy",
		-- version = false, -- Never set this value to "*"! Never!
		-- ---@module 'avante'
		-- ---@type avante.Config
		-- opts = {
		-- 	provider = "copilot",
		-- },
		-- dependencies = {
		-- 	"nvim-lua/plenary.nvim",
		-- 	"MunifTanjim/nui.nvim",
		-- 	--- The below dependencies are optional,
		-- 	"echasnovski/mini.pick",   -- for file_selector provider mini.pick
		-- 	"nvim-telescope/telescope.nvim", -- for file_selector provider telescope
		-- 	"hrsh7th/nvim-cmp",        -- autocompletion for avante commands and mentions
		-- 	"ibhagwan/fzf-lua",        -- for file_selector provider fzf
		-- 	"stevearc/dressing.nvim",  -- for input provider dressing
		-- 	"folke/snacks.nvim",       -- for input provider snacks
		-- 	"nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
		-- 	"zbirenbaum/copilot.lua",  -- for providers='copilot'
		-- 	{
		-- 		-- support for image pasting
		-- 		"HakonHarnes/img-clip.nvim",
		-- 		event = "VeryLazy",
		-- 		opts = {
		-- 			-- recommended settings
		-- 			default = {
		-- 				embed_image_as_base64 = false,
		-- 				prompt_for_file_name = false,
		-- 				drag_and_drop = {
		-- 					insert_mode = true,
		-- 				},
		-- 				-- required for Windows users
		-- 				use_absolute_path = true,
		-- 			},
		-- 		},
		-- 	},
		-- 	{
		-- 		-- Make sure to set this up properly if you have lazy=true
		-- 		'MeanderingProgrammer/render-markdown.nvim',
		-- 		opts = {
		-- 			file_types = { "markdown", "Avante" },
		-- 		},
		-- 		ft = { "markdown", "Avante" },
		-- 	},
		-- },
	},
	{
		"L3MON4D3/LuaSnip",
		build = "make install_jsregexp",
		event = "VeryLazy",
		dependencies = {
			"rafamadriz/friendly-snippets",
		},
	},
	{
		'saghen/blink.cmp',
		-- optional: provides snippets for the snippet source
		dependencies = { 'rafamadriz/friendly-snippets' },

		-- use a release tag to download pre-built binaries
		version = '1.*',
		-- AND/OR build from source, requires nightly: https://rust-lang.github.io/rustup/concepts/channels.html#working-with-nightly-rust
		-- build = 'cargo build --release',
		-- If you use nix, you can build from source using latest nightly rust with:
		-- build = 'nix run .#build-plugin',

		---@module 'blink.cmp'
		---@type blink.cmp.Config
		opts = {
			keymap = {
				-- set to 'none' to disable the 'default' preset
				preset = 'none',

				['<Up>'] = { 'select_prev', 'fallback' },

				['<Down>'] = { 'select_next', 'fallback' },

				['<CR>'] = { 'accept', 'fallback' },

				['<Tab>'] = { 'show_and_insert', 'select_next', 'fallback_to_mappings' },

				['<S-Tab>'] = { 'show_and_insert', 'select_prev', 'fallback_to_mappings' },

				['<C-j>'] = { function(cmp)
					if cmp.snippet_active() then
						return cmp.accept()
					else
						return cmp.select_and_accept()
					end
				end,
					'snippet_forward',
					'fallback'
				},


				['<C-k>'] = { 'snippet_backward', 'fallback' },

				['<C-n>'] = { 'select_and_accept' },

				['<C-p>'] = { 'cancel' },


				['<C-d>'] = { 'show_documentation', 'scroll_documentation_down' },

				['<C-u>'] = { 'scroll_documentation_up' },

				['<C-h>'] = { 'show_documentation', 'hide_documentation' },

				-- ['<C-S>'] = { 'show_signature', 'hide_signature', 'fallback' },
				['<C-S>'] = false,
			},

			cmdline = {
				keymap = { preset = 'inherit' },
				completion = {
					menu = {
						auto_show = false
					}
				},
			},

			appearance = {
				nerd_font_variant = 'mono',
			},

			-- (Default) Only show the documentation popup when manually triggered
			completion = {
				documentation = {
					auto_show = false,
					window = {
						scrollbar = false,
						border = "rounded"
					}
				},
				menu = {
					border = "rounded",
					scrollbar = false
				}
			},

			snippets = { preset = 'luasnip' },

			sources = {
				default = { "lsp", "path", "snippets", "buffer" },
			},

			fuzzy = { implementation = "prefer_rust_with_warning" },

		},
		opts_extend = { "sources.default" }

	},
	-- {
	-- 	"hrsh7th/nvim-cmp",
	-- 	event = { "InsertEnter", "CmdlineEnter" },
	-- 	dependencies = {
	-- 		"hrsh7th/cmp-nvim-lsp",
	-- 		"hrsh7th/cmp-path",
	-- 		"hrsh7th/cmp-buffer",
	-- 		"hrsh7th/cmp-nvim-lua",
	-- 		"hrsh7th/cmp-cmdline",
	--      "saadparwaiz1/cmp_luasnip",
	-- 	},
	-- 	config = function()
	-- 		local cmp = require("cmp")
	-- 		local ls = require("luasnip")
	-- 		-- Customization for Pmenu
	-- 		cmp.setup({
	-- 			snippet = {
	-- 				expand = function(args)
	-- 					require("luasnip").lsp_expand(args.body)
	-- 				end,
	-- 			},
	-- 			window = {
	-- 				completion = cmp.config.window.bordered({
	-- 					winhighlight = 'Normal:Normal,FloatBorder:None,CursorLine:Visual,Search:None'
	-- 				}),
	-- 				documentation = cmp.config.window.bordered({
	-- 					winhighlight = 'Normal:Normal,FloatBorder:None,CursorLine:Visual,Search:None'
	-- 				}),
	-- 			},
	-- 			formatting = {
	-- 				format = function(entry, vim_item)
	-- 					-- Kind icons
	-- 					vim_item.kind = string.format("%s %s", kind_icons[vim_item.kind], vim_item.kind)
	-- 					-- Source
	-- 					vim_item.menu = ({
	-- 						buffer = "[Buffer]",
	-- 						nvim_lsp = "[LSP]",
	-- 						luasnip = "[LuaSnip]",
	-- 						nvim_lua = "[Nvim_Lua]",
	-- 						latex_symbols = "[LaTeX]",
	-- 						render_markdown = "[Markdown]",
	-- 						cmdline = "[CMD]",
	-- 					})[entry.source.name]
	-- 					return vim_item
	-- 				end,
	-- 			},
	-- 			mapping = cmp.mapping.preset.insert({
	-- 				['<Tab>'] = cmp.mapping(function(fallback)
	-- 					if cmp.visible() then
	-- 						cmp.select_next_item()
	-- 					else
	-- 						fallback()
	-- 					end
	-- 				end, { "i", "s" }),
	-- 				['<S-Tab>'] = cmp.mapping(function(fallback)
	-- 					if cmp.visible() then
	-- 						cmp.select_prev_item()
	-- 					else
	-- 						fallback()
	-- 					end
	-- 				end, { "i", "s" }),
	-- 				['<CR>'] = cmp.mapping(function(fallback)
	-- 					if cmp.visible() then
	-- 						if ls.expandable() then
	-- 							ls.expand({})
	-- 						else
	-- 							cmp.confirm({
	-- 								select = true,
	-- 							})
	-- 						end
	-- 					else
	-- 						fallback()
	-- 					end
	-- 				end, { "i", "s" }),
	-- 				['<C-j>'] = cmp.mapping(function(fallback)
	-- 					if (ls.expand_or_locally_jumpable()) then
	-- 						ls.expand_or_jump();
	-- 					else
	-- 						fallback()
	-- 					end
	-- 				end, { "i", "s" }),
	-- 				['<C-l>'] = cmp.mapping(function(fallback)
	-- 					if (ls.expandable()) then
	-- 						ls.expand({})
	-- 					else
	-- 						fallback()
	-- 					end
	-- 				end, { "i", "s" }),
	-- 				['<C-k>'] = cmp.mapping(function(fallback)
	-- 					if (ls.locally_jumpable(-1)) then
	-- 						ls.jump(-1)
	-- 					else
	-- 						fallback();
	-- 					end
	-- 				end, { "i", "s" }),
	-- 				['<C-c>'] = cmp.mapping(function(fallback)
	-- 					if (ls.choice_active()) then
	-- 						ls.change_choice(1);
	-- 					else
	-- 						fallback();
	-- 					end
	-- 				end, { "i", "s" }),
	-- 			}),
	-- 			sources = cmp.config.sources({
	-- 				--来自nvim-luasnip
	-- 				{
	-- 					name = "luasnip",
	-- 				},
	-- 				--来自lsp
	-- 				{
	-- 					name = "nvim_lsp",
	-- 				},
	-- 				--来自buffer
	-- 				{
	-- 					name = "buffer",
	-- 				},
	--
	-- 				{
	-- 					name = "render-markdown",
	-- 				},
	--
	-- 				--来自cmp-nvim-lua
	-- 				{
	-- 					name = "nvim_lua",
	-- 				},
	-- 				--来自nvim-path
	-- 				{
	-- 					name = "path"
	-- 				},
	-- 				-- { name = "codeium" },
	-- 			}),
	-- 		})
	--
	-- 		vim.o.wildmenu = false
	-- 		cmp.setup.cmdline({ '/', '?' }, {
	-- 			mapping = cmp.mapping.preset.cmdline(),
	-- 			sources = {
	-- 				{ name = 'buffer' }
	-- 			}
	-- 		})
	--
	-- 		cmp.setup.cmdline(':', {
	-- 			mapping = cmp.mapping.preset.cmdline(),
	-- 			sources = cmp.config.sources({
	-- 				{ name = 'cmdline' },
	-- 				{ name = 'path' },
	-- 				{ name = 'buffer' }
	-- 			})
	-- 		})
	-- 		require("luasnip.loaders.from_vscode").lazy_load()
	-- 	end,
	--
	-- },

}
