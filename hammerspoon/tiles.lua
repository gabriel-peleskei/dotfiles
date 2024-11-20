-- Load Hammerspoon's window management module
local hswindow = require("hs.window")
local hsscreen = require("hs.screen")

-- Define key modifiers
local hyper = { "cmd", "ctrl" }

-- Snap window to left half
hs.hotkey.bind(hyper, "Left", function()
	local win = hs.window.focusedWindow()
	local screen = win:screen()
	local frame = screen:frame()

	win:setFrame(hs.geometry(frame.x, frame.y, frame.w / 2, frame.h))
end)

-- Snap window to right half
hs.hotkey.bind(hyper, "Right", function()
	local win = hs.window.focusedWindow()
	local screen = win:screen()
	local frame = screen:frame()

	win:setFrame(hs.geometry(frame.x + frame.w / 2, frame.y, frame.w / 2, frame.h))
end)

-- Snap window to top half
hs.hotkey.bind(hyper, "Up", function()
	local win = hs.window.focusedWindow()
	local screen = win:screen()
	local frame = screen:frame()

	win:setFrame(hs.geometry(frame.x, frame.y, frame.w, frame.h / 2))
end)

-- Snap window to bottom half
hs.hotkey.bind(hyper, "Down", function()
	local win = hs.window.focusedWindow()
	local screen = win:screen()
	local frame = screen:frame()

	win:setFrame(hs.geometry(frame.x, frame.y + frame.h / 2, frame.w, frame.h / 2))
end)
