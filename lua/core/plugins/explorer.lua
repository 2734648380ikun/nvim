return {
	"nvim-tree/nvim-tree.lua",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	opts = {

		-- 关闭文件系统监视器，避免递归监听
		filesystem_watchers = { enable = false },
		-- 禁止切换缓冲区时自动重载
		reload_on_bufenter = false,

		-- check :h nvim-tree-setup
		disable_netrw = true,
		hijack_netrw = true,
		diagnostics = {
			enable = false,
		},

		update_focused_file = {
			enable = true,
		},
		view = {
			width = 30,
			preserve_window_proportions = false,
		},
		modified = {
			enable = false,
			show_on_dirs = false,
			show_on_open_dirs = false,
		},
		log = {
			enable = true,
			truncate = true,
			types = {
				all = false,
				config = false,
				copy_paste = false,
				dev = false,
				diagnostics = true,
				git = true,
				profile = true,
				watcher = true,
			},
		},
		renderer = {
			icons = {
				git_placement = "before",
				glyphs = {
					default = "",
					symlink = "",
					bookmark = "★",
					modified = "●",
					git = {
						--unstaged = "✗",
						unstaged = "M",
						staged = "✓",
						unmerged = "",
						renamed = "➜",
						untracked = "?",
						deleted = "D",
						ignored = "◌",
					},
				},
			},
		},
		actions = {
			open_file = {
				resize_window = false,
			},
		},
	},
	-- config = function()
	-- 	require("nvim-tree").setup({
	--
	-- 	})
	-- end,

	-- keymaps
}
