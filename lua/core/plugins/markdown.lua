return {
	'MeanderingProgrammer/render-markdown.nvim',
	dependencies = {
		'nvim-treesitter/nvim-treesitter',
		'echasnovski/mini.nvim',
		'echasnovski/mini.icons',
		'nvim-tree/nvim-web-devicons'
	},
	opts = {
		file_types = { 'markdown', 'codecompanion' },
		heading = {
			backgrounds = {
				'RenderMarkdownH1',
				'RenderMarkdownH2',
				'RenderMarkdownH3',
				'RenderMarkdownH4',
				'RenderMarkdownH5',
				'RenderMarkdownH6',
				-- 'DiffRemoved',
				-- 'DiffChanged',
				-- 'DiffAdded',
				-- 'DiffFile',
				-- 'DiffOldfile',
				-- 'DiffLine',
			},
		},
		code = {
			language_border = ' ',
		}
	},

	-- config = function()
	-- 	require('render-markdown').setup({
	-- 		heading ={
	-- 			custom ={
	--
	--
	-- 			}
	--
	-- 		}
	-- 	})
	-- end
}
