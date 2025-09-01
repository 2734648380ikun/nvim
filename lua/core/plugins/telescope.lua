return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	keys = {
		-- Telescope notify
		{
			"<Leader>n",
			mode = { "n" },
			"<cmd>Telescope notify<CR>",
			desc = "open the notification page",
		},
		-- Telescope oldfiles
		{
			"<leader>fo",
			mode = { "n" },
			"<cmd>Telescope oldfiles<CR>",
			desc = "open the old files",
		},
		-- Telescope filetypes
		{
			"<leader>ft",
			mode = { "n" },
			"<cmd>Telescope filetypes<CR>",
			desc = "set file type",
		},
		-- Telescope find_files
		{
			"<Leader>ff",
			mode = { "n" },
			"<cmd>Telescope find_files<CR>",
			desc = "Find file",
		},
		-- Telescope live_grep
		{
			"<Leader>fg",
			mode = { "n" },
			"<cmd>Telescope live_grep<CR>",
			desc = "Find grep",
		},
		-- Fzf Files
		{
			"<leader>fF",
			mode = { "n" },
			"<cmd>Files<CR>",
			desc = "Using FzF",
		},
		-- Fzf RG
		{
			"<leader>fR",
			mode = { "n" },
			"<cmd>RG<CR>",
			desc = "Using RG",
		},
		-- Fzf Rg
		{
			"<leader>fr",
			mode = { "n" },
			"<cmd>Rg<CR>",
			desc = "Using Rg",
		},
		-- Fzf Ag
		{
			"<leader>fa",
			mode = { "n" },
			"<cmd>Ag<CR>",
			desc = "Using ag",
		},
	},
	opts = {
		defaults = {
			mappings = {
				n = {
					["<Esc><Esc>"] = "close",
					["<Esc>"] = false,
				}
			},
		},
		pickers = {
			find_files = {
				theme = "dropdown"
			},
			live_grep = {
				theme = "dropdown"
			}
		},
	},

	config = function(_,opts)
		local ts = require("telescope")
		ts.setup(opts)
		vim.api.nvim_set_hl(0, "TelescopeSelection", {
			bg = "None",
			bold = true,
			underdashed = true,
			-- underdashed = true,
		})
	end
}
