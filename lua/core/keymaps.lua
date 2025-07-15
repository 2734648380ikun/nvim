local keymap = vim.keymap.set

-- Leader key (Space bar)
vim.g.mapleader = " "

--telescope
--
vim.keymap.set("n", "<Leader>n", ":Telescope notify<CR>", { desc = "open the notification page", silent = true, })

vim.keymap.set("n", "<leader>fo", ":Telescope oldfiles<CR>", { desc = "open the old files", silent = true, })

vim.keymap.set("n", "<leader>ft", ":Telescope filetypes<CR>", { desc = "set file type", silent = true })

-- vim.keymap.set("n", "<leader>ai", ":Telescope codecompanion<CR>",
-- 	{ desc = "open the ai code companion", silent = true })
-- keymaps
vim.keymap.set("n", "<Leader>ff", "<Cmd>Telescope find_files<CR>", { desc = "Find file", silent = true })
vim.keymap.set("n", "<Leader>fg", "<Cmd>Telescope live_grep<CR>", { desc = "Find grep", silent = true })

-- vim.keymap.set("n", "<Leader>gr", builtin.lsp_references, { desc = "Get references" })

--- NvimTree
vim.keymap.set("n", "<Leader>e", ":NvimTreeToggle<CR>", { desc = "Explorer", silent = true })



--- fzf

vim.keymap.set('n', '<leader>fF', ':Files<CR>', { silent = true, desc = "Using FzF" })
vim.keymap.set('n', '<leader>fR', ':RG<CR>', { silent = true, desc = "Using RG" })
vim.keymap.set('n', '<leader>fr', ':Rg<CR>', { silent = true, desc = "Using Rg" })
vim.keymap.set('n', '<leader>fa', ':Ag<CR>', { silent = true, desc = "Using ag" })


--- lsp
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "gD", vim.diagnostic.open_float, {})
vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
vim.keymap.set("n", "gR", vim.lsp.buf.rename, {})
vim.keymap.set("n", "gca", vim.lsp.buf.code_action, {})
-- C-x-o for autocomplete suggestion
----------------


---------------
--- vim builtin
-- :w shortcut
keymap("n", "<Leader>w", ":w<CR>", { desc = "Write" })

-- :q shortcut
keymap("n", "<Leader>q", ":q<CR>", { desc = "Quit/Close" })

-- Scroll with mouse
keymap("n", "<ScrollWheelUp>", "<C-Y>", {})
keymap("n", "<ScrollWheelDown>", "<C-E>", {})

-- Split vertically
keymap("n", "<Leader>s", ":vsplit<CR>", { silent = true })

-- Navigate splits
keymap("n", "<C-Left>", ":winc h<CR>", { silent = true })
keymap("n", "<C-Down>", ":winc j<CR>", { silent = true })
keymap("n", "<C-Up>", ":winc k<CR>", { silent = true })
keymap("n", "<C-Right>", ":winc l<CR>", { silent = true })

-- Resize current split
keymap("n", "<Leader>+", ":vertical resize +5<CR>", { silent = true })
keymap("n", "<Leader>-", ":vertical resize -5<CR>", { silent = true })

-- Select all
-- keymap("n", "<C-Z>", "u", { desc = "Undo" })

-- keymap("i", "<C-Z>", "<esc>ua", { desc = "Undo" })

-- keymap("n", "<C-Y>", "<C-R>", { desc = "Restore" })

-- keymap("i", "<C-V>", "<C-R>*")

-- keymap("i", "<C-S>", "<esc>:w<CR>a")
-- keymap("n", "<C-S>", "<esc>:w<CR>")

keymap("n", "<m-h>", ":tabprev<CR>", { silent = true })
keymap("n", "<m-l>", ":tabnext<CR>", { silent = true })

keymap("n", "<m-1>", ":tabn 1<CR>", { silent = true })
keymap("n", "<m-2>", ":tabn 2<CR>", { silent = true })
keymap("n", "<m-3>", ":tabn 3<CR>", { silent = true })
keymap("n", "<m-4>", ":tabn 4<CR>", { silent = true })
keymap("n", "<m-5>", ":tabn 5<CR>", { silent = true })
keymap("n", "<m-6>", ":tabn 6<CR>", { silent = true })
keymap("n", "<m-7>", ":tabn 7<CR>", { silent = true })
keymap("n", "<m-8>", ":tabn 8<CR>", { silent = true })
keymap("n", "<m-9>", ":tabn 9<CR>", { silent = true })
keymap("n", "<m-0>", ":tabn 10<CR>", { silent = true })

-- keymap("i", "<C-CR>", "<esc>A;<CR>")


keymap("n", "<Leader>gvi", ":e $VIMRC<CR>", { desc = "Edit vimrc", silent = true, })

keymap("n", "<C-W>t", ":tabnew<CR>", { desc = "Create new tab window", silent = true, })
-- keymap("n", "<Leader>o", ":%so<CR>", { desc = "source current file to neovim" })
--
--
keymap("n", "[n", ":cn<CR>", { desc = "jump to next error after make", silent = true, })
keymap("n", "]n", ":cp<CR>", { desc = "jump to previous error after make", silent = true, })

keymap("n", "<esc><esc>", "<Cmd>winc q<CR>", { desc = "close cur window,same as winc q", silent = true });



--copilot
-- keymap("i", "<m-f>", 'copilot#Accept("\\<CR>")', {
-- 	expr = true,
-- 	replace_keycodes = false,
-- })

-- vim.g.copilot_no_tab_map = true
