hl.bind("SUPER + SHIFT + V", function ()
	local workspace = hl.get_active_workspace()
	if workspace == nil then return end

	local windows = hl.get_workspace_windows(workspace)
	for _, window in ipairs(windows) do
		hl.dispatch(hl.dsp.window.float({ window = window, action = "toggle" }))
	end
end)
