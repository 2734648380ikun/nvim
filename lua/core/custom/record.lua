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
	notify.dismiss({ silent = true, pending = true })
end

--CodeCompanionHooks
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
