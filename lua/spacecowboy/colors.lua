local M = {}

local base = {
	none = "NONE",
	bg = "NONE",
	grey = "#6b7b8c",
	dark_grey = "#1a2332",
	sand = "#a8b5c4",
	white = "#c5d0dc",
	black = "#0a0e14",
	diff = {
		add_bg = "#0a2820",
		delete_bg = "#2a1015",
		change_bg = "#0a1a2a",
	},
	diagnostic = {
		bg_error = "#2a0a15",
		bg_warn = "#2a1a0a",
		bg_info = "#0a1520",
		bg_hint = "#0a201a",
	},
}

local variants = {
	bright = {
		steel_blue = "#00c5ff",
		industrial_cyan = "#00d4d4",
		class_teal = "#00e8d4",
		sage_green = "#00ff41",
		olive = "#5fbf5f",
		muted_orange = "#ff9500",
		desaturated_gold = "#ffd700",
		warm_yellow = "#ffd700",
		lavender = "#ff00ff",
		noir_purple = "#a855f7",
		red = "#ff0055",
		rust = "#ff0055",
		coral = "#ff4499",
	},
	neutral = {
		steel_blue = "#00a0cc",
		industrial_cyan = "#00aaaa",
		class_teal = "#00bbaa",
		sage_green = "#00cc34",
		olive = "#4d994d",
		muted_orange = "#cc7700",
		desaturated_gold = "#ccac00",
		warm_yellow = "#ccac00",
		lavender = "#cc00cc",
		noir_purple = "#8644c6",
		red = "#cc0044",
		rust = "#cc0044",
		coral = "#cc3377",
	},
	muted = {
		steel_blue = "#0080a3",
		industrial_cyan = "#008888",
		class_teal = "#009688",
		sage_green = "#00a32a",
		olive = "#3d7a3d",
		muted_orange = "#a35f00",
		desaturated_gold = "#a38a00",
		warm_yellow = "#a38a00",
		lavender = "#a300a3",
		noir_purple = "#6b369e",
		red = "#a30036",
		rust = "#a30036",
		coral = "#a3295f",
	},
}

---@class Palette
M.default = vim.tbl_extend("force", base, variants.bright)

---@param variant? "bright"|"neutral"|"muted"
---@return ColorScheme
function M.setup(variant)
	variant = variant or "bright"
	local palette = variants[variant] or variants.bright

	---@class ColorScheme: Palette
	local colors = vim.tbl_extend("force", vim.deepcopy(base), palette)
	return colors
end

return M
