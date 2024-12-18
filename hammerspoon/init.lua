-- Mapping cmd + number to specific applications
local appBindings = {
	"WezTerm", -- cmd + 1
	"Firefox", -- cmd + 2
	"Visual Studio Code", -- cmd + 3
	"Finder", -- cmd + 4
	"Telegram", -- 5
	"Safari", -- 6
	"Mail", -- 7
	"DBeaver", -- 8
}

for i, appName in ipairs(appBindings) do
	hs.hotkey.bind({ "cmd" }, tostring(i), function()
		-- Get the application object
		local app = hs.application.get(appName)
		if not app then
			-- Launch the application if not running
			hs.application.launchOrFocus(appName)
		else
			-- If the app is running
			local windows = app:allWindows()
			if #windows == 0 then
				-- No windows, just focus the app
				hs.application.launchOrFocus(appName)
			else
				-- Check if the app is focused
				if app:isFrontmost() then
					-- Cycle through windows if more than one
					local focusedWindow = app:focusedWindow()
					local nextWindow = nil
					for j, window in ipairs(windows) do
						if window == focusedWindow then
							nextWindow = windows[j % #windows + 1]
							break
						end
					end
					if nextWindow then
						nextWindow:focus()
					end
				else
					-- If app is not focused, bring it to the front
					hs.application.launchOrFocus(appName)
				end
			end
		end
	end)
end

-- require("tiles")
