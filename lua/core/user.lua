-- 这里主要是来写自己定义的一些自动函数
local notify = require("notify")
vim.api.nvim_create_autocmd("RecordingEnter", {
	callback = function()
		StartRecordingMacro()
	end,
})

-- 函数：开始录制宏
function StartRecordingMacro()
	-- 显示通知：正在录制宏
	notify("正在录制宏...", "info", {
		timeout = false,
	})
	-- 设置一个回调函数，停止录制宏时关闭通知
	vim.cmd("autocmd RecordingLeave * lua StopRecordingMacro()")
end

-- 函数： 停止录制宏
function StopRecordingMacro()
	notify.dismiss()
end

local group = vim.api.nvim_create_augroup("CodeCompanionHooks", {})

vim.api.nvim_create_autocmd({ "User" }, {
	group = group,
	callback = function(request)
		if request.match == "CodeCompanionChatCreated" then
			-- Format the buffer after the inline request has completed
			notify("创建成功！", "info", { timeout = 1000 })
		end

		if request.match == "CodeCompanionRequestStarted" then
			notify("AI 正在思考中...", "info", { timeout = false })
		end

		if request.match == "CodeCompanionRequestFinished" then
			notify.dismiss()
			notify("AI 思考完成!", "info", { timeout = 1000 })
		end
	end,
})

-- 中文输入法与英文输入法在不同模式下的自动切换

local input_mode_augroup = vim.api.nvim_create_augroup("InputModeAugroup",{})

local function switch_to_english_mode()
	if vim.fn.has('macunix') == 1 then
		vim.system({"macism"},{text = true},function (out)
			PREVIOUS_INPUT_MODE = string.gsub(out.stdout,"\n","")
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

vim.api.nvim_create_autocmd("InsertLeave",{
	group = "InputModeAugroup",
	callback = function ()
		switch_to_english_mode()
	end,
})

vim.api.nvim_create_autocmd("InsertEnter",{
	group = "InputModeAugroup",
	callback = function ()
		switch_to_ori_input_mode();
	end,
})
