-- Load Hammerspoon's window management module
local hswindow = require("hs.window")
local hsscreen = require("hs.screen")

-- Define key modifiers
local hyper = { "cmd", "ctrl" }
local hyper_shift = { "cmd", "ctrl", "shift" }
local met = { "cmd", "alt" }

local snap_left = function()
	local win = hs.window.focusedWindow()
	local screen = win:screen()
	local frame = screen:frame()
	win:setFrame(hs.geometry(frame.x, frame.y, frame.w / 2, frame.h))
end

local snap_right = function()
	local win = hs.window.focusedWindow()
	local screen = win:screen()
	local frame = screen:frame()
	win:setFrame(hs.geometry(frame.x + frame.w / 2, frame.y, frame.w / 2, frame.h))
end

local snap_top = function()
	local win = hs.window.focusedWindow()
	local screen = win:screen()
	local frame = screen:frame()
	win:setFrame(hs.geometry(frame.x, frame.y, frame.w, frame.h / 2))
end

local snap_bottom = function()
	local win = hs.window.focusedWindow()
	local screen = win:screen()
	local frame = screen:frame()
	win:setFrame(hs.geometry(frame.x, frame.y + frame.h / 2, frame.w, frame.h / 2))
end

local maximize = function()
	local win = hs.window.focusedWindow()
	local screen = win:screen()
	local frame = screen:frame()
	win:setFrame(hs.geometry(frame.x, frame.y, frame.w, frame.h))
end

-- Snap window to left half
hs.hotkey.bind(hyper, "Left", snap_left)
hs.hotkey.bind(met, "r", snap_left)

-- Snap window to right half
hs.hotkey.bind(hyper, "Right", snap_right)
hs.hotkey.bind(met, "t", snap_right)

-- Snap window to top half
hs.hotkey.bind(hyper, "Up", snap_top)
hs.hotkey.bind(met, "f", snap_top)

-- Snap window to bottom half
hs.hotkey.bind(hyper, "Down", snap_bottom)
hs.hotkey.bind(met, "c", snap_bottom)

-- Maximize
hs.hotkey.bind(hyper_shift, "=", maximize)
hs.hotkey.bind(met, "s", maximize)
