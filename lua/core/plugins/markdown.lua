return {
	'MeanderingProgrammer/render-markdown.nvim',
	dependencies = {
		'nvim-treesitter/nvim-treesitter',
		'echasnovski/mini.nvim',
		'echasnovski/mini.icons',
		'nvim-tree/nvim-web-devicons'
	},
	config = function ()
		require('render-markdown').setup({
			file_types={'markdown','codecompanion'}
		})
	end
}
