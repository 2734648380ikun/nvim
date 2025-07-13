return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	opts = {
		-- 关闭文件系统监视器，避免递归监听
		filesystem_watchers = { enable = false },
		-- 禁止切换缓冲区时自动重载
		reload_on_bufenter = false,
		git = { enable = false },
		sort = {
			sorter = "case_sensitive",
		},
		view = {
			width = 30,
		},
		renderer = {
			group_empty = true,
		},
		filters = {
			dotfiles = true,
		},
	}
	-- config = function()
	-- 	require("nvim-tree").setup({})
	-- end,
}
