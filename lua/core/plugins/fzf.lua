return {
	{
		'junegunn/fzf', -- 主仓库（必须，提供 Vim 插件脚本）
		lazy = false,
	},
	{
		'junegunn/fzf.vim', -- 扩展命令（如 :Files）
		dependencies = { 'junegunn/fzf' },
		lazy = false,
		-- config = function()
		-- end

	}
}
