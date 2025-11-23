local theme = require("spacecowboy.theme")

local M = {}

local defaults = {
	on_colors = function() end,
	on_highlights = function() end,
}

function M.setup(options)
	M.options = vim.tbl_deep_extend("force", defaults, options or {})
end

local function highlight(group, hl)
	vim.api.nvim_set_hl(0, group, hl)
end

local function load_syntax(syntax)
	for group, colors in pairs(syntax) do
		highlight(group, colors)
	end
end

function M.load()
	vim.o.termguicolors = true
	vim.g.colors_name = "spacecowboy"

	load_syntax(theme.setup().highlights)
end

M.colorscheme = M.load

return M
