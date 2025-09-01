return {
	{
		'stevearc/oil.nvim',
		---@module 'oil'
		---@type oil.SetupOpts
		opts = {

		},
		keys = {
			{
				"<leader>ee",
				mode = { "n", "v" },
				"<cmd>Oil<cr>",
				desc = "Open default file explorer",
			},
			{
				"<Leader>gvi",
				mode = { "n" },
				"<cmd>e $VIMRC<CR>",
				desc = "Explorer vimrc file same as cmd,ensure $VIMRC exist",
			},
			{
				"<Leader>ef",
				mode = { "n" },
				"<cmd>lua require('oil').open_float()<CR>",
				desc = "Open default file explorer with float window",
			},

		},
		-- Optional dependencies
		dependencies = { { "echasnovski/mini.icons", opts = {} } },
		-- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
		-- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
		lazy = false,
	},
	-- {
	-- 	"mikavilpas/yazi.nvim",
	-- 	version = "*", -- use the latest stable version
	-- 	event = "VeryLazy",
	-- 	dependencies = {
	-- 		{ "nvim-lua/plenary.nvim", lazy = true },
	-- 	},
	-- 	keys = {
	-- 		-- 👇 in this section, choose your own keymappings!
	-- 		{
	-- 			"<leader>eye",
	-- 			mode = { "n", "v" },
	-- 			"<cmd>Yazi<cr>",
	-- 			desc = "Open yazi at the current file",
	-- 		},
	-- 		{
	-- 			-- Open in the current working directory
	-- 			"<leader>eycw",
	-- 			"<cmd>Yazi cwd<cr>",
	-- 			desc = "Open the file manager in nvim's working directory",
	-- 		},
	-- 		{
	-- 			"<leader>eyt",
	-- 			"<cmd>Yazi toggle<cr>",
	-- 			desc = "Resume the last yazi session",
	-- 		},
	-- 	},
	-- 	opts = {
	-- 		-- if you want to open yazi instead of netrw, see below for more info
	-- 		open_for_directories = false,
	-- 		keymaps = {
	-- 			show_help = "g?",
	-- 		},
	-- 	},
	-- 	-- 👇 if you use `open_for_directories=true`, this is recommended
	-- 	init = function()
	-- 		-- mark netrw as loaded so it's not loaded at all.
	-- 		--
	-- 		-- More details: https://github.com/mikavilpas/yazi.nvim/issues/802
	-- 		vim.g.loaded_netrwPlugin = 1
	-- 	end,
	-- },

	--nvim-tree
	-- {
	-- 	"nvim-tree/nvim-tree.lua",
	-- 	lazy = false,
	-- 	dependencies = {
	-- 		"nvim-tree/nvim-web-devicons",
	-- 	},
	-- 	opts = {
	--
	-- 		-- 关闭文件系统监视器，避免递归监听
	-- 		filesystem_watchers = { enable = false },
	-- 		-- 禁止切换缓冲区时自动重载
	-- 		reload_on_bufenter = false,
	--
	-- 		-- check :h nvim-tree-setup
	-- 		disable_netrw = true,
	-- 		hijack_netrw = true,
	-- 		diagnostics = {
	-- 			enable = false,
	-- 		},
	--
	-- 		update_focused_file = {
	-- 			enable = true,
	-- 		},
	-- 		view = {
	-- 			width = 20,
	-- 			preserve_window_proportions = false,
	-- 		},
	-- 		modified = {
	-- 			enable = false,
	-- 			show_on_dirs = false,
	-- 			show_on_open_dirs = false,
	-- 		},
	-- 		log = {
	-- 			enable = true,
	-- 			truncate = true,
	-- 			types = {
	-- 				all = false,
	-- 				config = false,
	-- 				copy_paste = false,
	-- 				dev = false,
	-- 				diagnostics = true,
	-- 				git = true,
	-- 				profile = true,
	-- 				watcher = true,
	-- 			},
	-- 		},
	-- 		renderer = {
	-- 			icons = {
	-- 				git_placement = "before",
	-- 				glyphs = {
	-- 					default = "",
	-- 					symlink = "",
	-- 					bookmark = "★",
	-- 					modified = "●",
	-- 					git = {
	-- 						--unstaged = "✗",
	-- 						unstaged = "M",
	-- 						staged = "✓",
	-- 						unmerged = "",
	-- 						renamed = "➜",
	-- 						untracked = "?",
	-- 						deleted = "D",
	-- 						ignored = "◌",
	-- 					},
	-- 				},
	-- 			},
	-- 		},
	-- 		actions = {
	-- 			open_file = {
	-- 				resize_window = true,
	-- 			},
	-- 		},
	-- 	},
	--
	-- }
}
