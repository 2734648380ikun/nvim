if vim.g.neovide then
	--put thing
	-- vim.g.neovide_fullscreen = true
	vim.g.neovide_cursor_antialiasing = true

	vim.g.neovide_cursor_vfx_mode = "pixiedust"

	vim.opt.linespace = 0

	if vim.fn.has('macunix') == 1 then
		vim.g.neovide_input_macos_option_key_is_meta = "both"
		vim.g.neovide_show_border = false
		vim.g.neovide_padding_top = 0
		vim.g.neovide_padding_bottom = 0
		vim.g.neovide_padding_right = 0
		vim.g.neovide_padding_left = 0
		vim.g.neovide_hide_mouse_when_typing = true
		vim.o.guifont = "0xProto Nerd Font Propo:h22"
		vim.g.neovide_window_blurred = true
		vim.g.neovide_opacity = 0.9
		vim.g.neovide_normal_opacity = 0.9
		-- 浮动窗口的阴影效果
		vim.g.neovide_floating_shadow = true
		vim.g.neovide_floating_z_height = 10
		vim.g.neovide_light_angle_degrees = 45
		vim.g.neovide_light_radius = 5
	end
end
