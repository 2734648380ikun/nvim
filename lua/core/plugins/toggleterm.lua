return {
	"akinsho/toggleterm.nvim",
	config = function()
		local tt = require("toggleterm");
		if vim.fn.has('macunix') == 1 then
			tt.setup({
				on_open = function()
					vim.cmd("startinsert")
				end,
				shade_terminals = true,
				direction = 'float',
				shell = vim.o.shell,
			})
		else
			tt.setup({
				on_open = function()
					vim.cmd("startinsert")
				end,
				shade_terminals = false,
				direction = 'float',
				shell = vim.o.shell,
			})
		end
		-- Keymaps
		vim.keymap.set("n", "<Leader>t", ":ToggleTerm<CR>", {})
		vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], {})
	end,
}
