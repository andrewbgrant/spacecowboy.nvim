local M = {}

---@class Palette
M.default = {
	none = "NONE",
	bg = "NONE",

	-- Base greys and neutrals
	grey = "#7d94a1", -- Brighter base grey
	dark_grey = "#4a5458",
	chrome = "#b0b9bd", -- For self/this/cls keywords (brighter)
	sand = "#bfae9e",
	white = "#f2e6d3", -- Brighter white for better contrast
	black = "#181a1b",

	-- Expanded noir palette - more color variety, less blue dominance
	steel_blue = "#5ba3d4", -- Methods/functions (vibrant but readable)
	deep_blue = "#6b95c7", -- Type annotations (bright blue)
	industrial_cyan = "#4dd4d4", -- Constructors/modules (bright cyan)

	-- More diverse colors to replace excessive blues
	sage_green = "#7bc97b", -- String literals (vibrant green)
	forest_green = "#6fb56f", -- Hints/success (forest green)
	mint_green = "#85c985", -- Available for future use (mint)

	muted_orange = "#e6a050", -- Properties/attributes (warm orange)
	rust = "#d4845a", -- Errors (rust orange)
	desaturated_gold = "#e6c478", -- Constants/literals (golden)
	warm_yellow = "#f2d478", -- Numbers, booleans (golden yellow)

	olive = "#9bc49b", -- Conditionals (sage olive)
	noir_purple = "#a678a6", -- Decorators/special (soft purple)
	lavender = "#b899d4", -- Keywords, statements (soft purple)
	mauve = "#c7a5c7", -- Types, interfaces (muted mauve)

	red = "#d47b7b", -- Exceptions (vibrant red)
	coral = "#e89595", -- Tags, markup (soft coral)

	steel_grey = "#9aa3b3", -- Operators/punctuation (lighter contrast)
	warm_grey = "#b8aa9e", -- Comments, secondary text (warmer)

	-- Class/Constructor specific color
	class_teal = "#5ababa", -- Classes, constructors (distinct from keywords)

	diff = {
		add_bg = "#203520",
		delete_bg = "#352020",
		change_bg = "#253040",
	},
	diagnostic = {
		bg_error = "#2a1a1a",
		bg_warn = "#2a261a",
		bg_info = "#1a222a",
		bg_hint = "#1a2a22",
	},
}

---@return ColorScheme
function M.setup()
	-- Color Palette
	---@class ColorScheme: Palette
	local colors = vim.deepcopy(M.default)
	return colors
end

return M
