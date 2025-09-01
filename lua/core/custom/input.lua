-- 中文输入法与英文输入法在不同模式下的自动切换
-- 用于输入模式的转换，特定与中文输入法，在返回到normal模式会自动切换到英文，
-- 切换到插入模式后会继续转变为之前的输入模式

local input_mode_augroup = vim.api.nvim_create_augroup("InputModeAugroup", {})

local function switch_to_english_mode()
	if vim.fn.has('macunix') == 1 then
		vim.system({ "macism" }, { text = true }, function(out)
			PREVIOUS_INPUT_MODE = string.gsub(out.stdout, "\n", "")
		end)
		vim.cmd ":silent :!macism com.apple.keylayout.ABC"
	else

	end
end

local function switch_to_ori_input_mode()
	if vim.fn.has('macunix') == 1 then
		if PREVIOUS_INPUT_MODE then
			vim.cmd(":silent :!macism " .. PREVIOUS_INPUT_MODE)
		end
		PREVIOUS_INPUT_MODE = nil
	end
end

vim.api.nvim_create_autocmd("InsertLeave", {
	group = "InputModeAugroup",
	callback = function()
		switch_to_english_mode()
	end,
})

vim.api.nvim_create_autocmd("InsertEnter", {
	group = "InputModeAugroup",
	callback = function()
		switch_to_ori_input_mode();
	end,
})
----
