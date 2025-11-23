----------------------------------------------------------------------------------------------
--- template from folke/tokyonight.nvim
-----------------------------------------------------------------------------------------------
local colors = require("spacecowboy.colors")

local M = {}

function M.setup()
	local theme = { colors = colors.setup() }
	local c = theme.colors

	theme.highlights = {
		-- UI Elements
		Comment = { fg = c.warm_grey, italic = true },
		ColorColumn = { bg = c.black },
		Conceal = { fg = c.grey },
		Cursor = { fg = c.black, bg = c.muted_orange },
		lCursor = { link = "Cursor" },
		CursorIM = { link = "Cursor" },
		CursorColumn = { bg = c.black },
		CursorLine = { bg = c.black },
		Directory = { fg = c.steel_blue },
		EndOfBuffer = { fg = c.bg },
		ErrorMsg = { fg = c.rust, bold = true },
		VertSplit = { fg = c.black },
		Terminal = { bg = c.bg, fg = c.sand },
		WinSeparator = { fg = c.black, bold = false },
		Folded = { fg = c.grey, bg = c.black },
		FoldColumn = { bg = c.none, fg = c.grey },
		SignColumn = { bg = c.none, fg = c.grey },
		SignColumnSB = { bg = c.black, fg = c.grey },
		Substitute = { bg = c.muted_orange, fg = c.black },
		LineNr = { fg = c.grey, bg = c.bg },
		CursorLineNr = { fg = c.muted_orange, bg = c.black, bold = true },
		MatchParen = { fg = c.muted_orange, bg = c.grey, bold = true },
		ModeMsg = { fg = c.desaturated_gold, bold = true },
		MsgArea = { fg = c.sand },
		MoreMsg = { fg = c.steel_blue, bold = true },
		NonText = { fg = c.sand },
		Normal = { fg = c.sand, bg = c.bg },
		NormalNC = { fg = c.sand, bg = c.bg },
		NormalSB = { fg = c.sand, bg = c.black },
		NormalFloat = { fg = c.sand, bg = c.bg },
		FloatBorder = { fg = c.grey, bg = c.bg },
		FloatTitle = { fg = c.muted_orange, bg = c.bg, bold = true },
		Pmenu = { bg = c.bg, fg = c.sand },
		PmenuSel = { bg = c.grey, fg = c.white },
		PmenuSbar = { bg = c.bg },
		PmenuThumb = { bg = c.bg },
		Question = { fg = c.desaturated_gold, bold = true },
		QuickFixLine = { bg = c.black, bold = true },
		Search = { bg = c.muted_orange, fg = c.black },
		IncSearch = { bg = c.muted_orange, fg = c.black },
		CurSearch = { link = "IncSearch" },
		SpecialKey = { fg = c.grey },
		SpellBad = { sp = c.rust, undercurl = true },
		SpellCap = { sp = c.muted_orange, undercurl = true },
		SpellLocal = { sp = c.steel_blue, undercurl = true },
		SpellRare = { sp = c.desaturated_gold, undercurl = true },
		StatusLine = { fg = c.muted_orange, bg = c.black },
		StatusLineNC = { fg = c.grey, bg = c.black },
		TabLine = { bg = c.black, fg = c.grey },
		TabLineFill = { bg = c.black },
		TabLineSel = { fg = c.muted_orange, bg = c.black, bold = true },
		Title = { fg = c.steel_blue, bold = true },
		Visual = { bg = c.dark_grey },
		VisualNOS = { bg = c.dark_grey },
		WarningMsg = { fg = c.muted_orange, bold = true },
		Whitespace = { fg = c.grey },
		WildMenu = { bg = c.black, fg = c.muted_orange },
		WinBar = { link = "StatusLine" },
		WinBarNC = { link = "StatusLineNC" },

		-- Syntax Highlighting (TS/Python focus)
		Identifier = { fg = c.sand },
		Constant = { fg = c.desaturated_gold },
		String = { fg = c.sage_green },
		Character = { fg = c.sage_green },
		Number = { fg = c.warm_yellow },
		Float = { link = "Number" },
		Boolean = { fg = c.warm_yellow },
		Function = { fg = c.steel_blue },
		Keyword = { fg = c.lavender },
		Statement = { fg = c.lavender },
		Conditional = { fg = c.olive },
		Repeat = { fg = c.olive },
		Label = { fg = c.muted_orange },
		Exception = { fg = c.red },
		Operator = { fg = c.steel_grey },
		PreProc = { fg = c.lavender },
		Include = { fg = c.industrial_cyan },
		Define = { fg = c.industrial_cyan },
		Macro = { fg = c.industrial_cyan },
		PreCondit = { fg = c.industrial_cyan },
		Module = { fg = c.industrial_cyan },
		Type = { fg = c.mauve },
		["@type"] = { link = "Type" },
		["@type.class"] = { fg = c.class_teal }, -- Class names
		["@constructor"] = { fg = c.class_teal }, -- Constructor calls
		Variable = { fg = c.white },
		["@variable"] = { fg = c.white },
		["@property"] = { fg = c.muted_orange }, -- Props like className, color, etc.
		["@attribute"] = { fg = c.muted_orange }, -- For HTML-like attributes
		["@component"] = { fg = c.class_teal }, -- React components
		StorageClass = { fg = c.steel_blue },
		Structure = { fg = c.mauve },
		Special = { fg = c.rust },
		SpecialChar = { fg = c.rust },
		Tag = { fg = c.coral },
		["@tag.tsx"] = { fg = c.coral },
		["@_jsx_element.tsx"] = { fg = c.coral },
		["@_jsx_attribute.tsx"] = { fg = c.red },
		Delimiter = { fg = c.steel_grey },
		Debug = { fg = c.rust, bold = true },
		Underlined = { underline = true },
		Bold = { bold = true },
		Italic = { italic = true },

		-- LSP
		LspReferenceText = { bg = c.black },
		LspReferenceRead = { bg = c.black },
		LspReferenceWrite = { bg = c.grey, bold = true },
		LspSignatureActiveParameter = { bg = c.black, fg = c.muted_orange, bold = true },
		LspCodeLens = { fg = c.grey },
		LspInlayHint = { bg = c.none, fg = c.sand, italic = true },
		LspInfoBorder = { fg = c.steel_blue, bg = c.black },

		-- Debugging
		debugPC = { bg = c.grey },
		debugBreakpoint = { bg = c.rust, fg = c.sand, bold = true },

		-- Diff
		DiffAdd = { bg = c.diff.add_bg, fg = c.grey },
		DiffDelete = { bg = c.diff.delete_bg, fg = c.grey },
		DiffChange = { bg = c.diff.change_bg, fg = c.grey },
		DiffText = { bg = c.diff.change_bg, fg = c.muted_orange, bold = true },

		-- Markdown/Markup
		mkdCodeDelimiter = { bg = c.black, fg = c.muted_orange },
		mkdCodeStart = { fg = c.steel_blue, bold = true },
		mkdCodeEnd = { fg = c.steel_blue, bold = true },
		markdownHeadingDelimiter = { fg = c.steel_blue, bold = true },
		markdownCode = { fg = c.muted_orange },
		markdownCodeBlock = { fg = c.sage_green, bg = c.black },
		markdownH1 = { fg = c.steel_blue, bold = true },
		markdownH2 = { fg = c.desaturated_gold, bold = true },
		markdownLinkText = { fg = c.desaturated_gold, underline = true },
		-- RenderMarkdownCode = { bg = c.black },

		-- Help
		helpCommand = { bg = c.bg, fg = c.muted_orange },
		helpHyperTextJump = { fg = c.desaturated_gold, underline = true },

		-- Quickfix / Location List
		qfLineNr = { fg = c.grey },
		qfFileName = { fg = c.steel_blue },

		-- Health
		healthError = { fg = c.rust, bold = true },
		healthSuccess = { fg = c.forest_green, bold = true },
		healthWarning = { fg = c.muted_orange, bold = true },

		-- Flash/Notify/Plugins
		FlashBackdrop = { fg = c.sand, bg = c.bg },
		FlashLabel = { bg = c.rust, bold = true, fg = c.black },
		NotifyBackground = { bg = c.bg },
		NotifyERRORBorder = { fg = c.rust },
		NotifyWARNBorder = { fg = c.muted_orange },
		NotifyINFOBorder = { fg = c.desaturated_gold },
		NotifyDEBUGBorder = { fg = c.grey },
		NotifyTRACEBorder = { fg = c.grey },
		NotifyERRORTitle = { fg = c.rust, bold = true },
		NotifyWARNTitle = { fg = c.muted_orange, bold = true },
		NotifyINFOTitle = { fg = c.desaturated_gold, bold = true },
		NotifyDEBUGTitle = { fg = c.grey, bold = true },
		NotifyTRACETitle = { fg = c.grey, bold = true },

		-- Diagnostics
		Error = { fg = c.rust },
		Todo = { bg = c.muted_orange, fg = c.black, bold = true },
		DiagnosticError = { fg = c.rust },
		DiagnosticWarn = { fg = c.muted_orange },
		DiagnosticInfo = { fg = c.desaturated_gold },
		DiagnosticHint = { fg = c.forest_green },
		DiagnosticUnnecessary = { fg = c.grey, italic = true },
		DiagnosticVirtualTextError = { bg = c.diagnostic.bg_error, fg = c.rust },
		DiagnosticVirtualTextWarn = { bg = c.diagnostic.bg_warn, fg = c.muted_orange },
		DiagnosticVirtualTextInfo = { bg = c.diagnostic.bg_info, fg = c.desaturated_gold },
		DiagnosticVirtualTextHint = { bg = c.diagnostic.bg_hint, fg = c.forest_green },
		DiagnosticUnderlineError = { undercurl = true, sp = c.rust },
		DiagnosticUnderlineWarn = { undercurl = true, sp = c.muted_orange },
		DiagnosticUnderlineInfo = { undercurl = true, sp = c.desaturated_gold },
		DiagnosticUnderlineHint = { undercurl = true, sp = c.forest_green },

		SnacksPickerFile = { fg = c.white },
		SnacksPickerDir = { fg = c.grey },

		-- Python-specific enhancements
		["@variable.builtin.python"] = { fg = c.chrome, italic = true }, -- self, cls, __name__, etc.
		["@function.method.python"] = { fg = c.steel_blue }, -- Method calls (foo() in self.foo())
		["@property.python"] = { fg = c.muted_orange }, -- Properties (data in self.data)
		["@decorator.python"] = { fg = c.noir_purple, bold = true }, -- @property, @staticmethod, etc.
		["@type.class.python"] = { fg = c.class_teal, bold = true }, -- Class names like RateLimitExceeded
		["@constructor.python"] = { fg = c.class_teal }, -- Class constructor calls
		["@string.interpolation.python"] = { fg = c.desaturated_gold }, -- f"string {var}" variables
		["@punctuation.special.python"] = { fg = c.steel_grey }, -- f-string braces {}
		["@constant.builtin.python"] = { fg = c.desaturated_gold, italic = true }, -- True, False, None
		["@type.builtin.python"] = { fg = c.mauve }, -- int, str, list, dict
		["@keyword.function.python"] = { fg = c.lavender }, -- def, lambda
		["@keyword.conditional.python"] = { fg = c.olive }, -- if, elif, else
		["@keyword.repeat.python"] = { fg = c.olive }, -- for, while
		["@keyword.exception.python"] = { fg = c.red }, -- try, except, finally, raise
		["@keyword.import.python"] = { fg = c.industrial_cyan }, -- import, from, as

		-- TypeScript/JavaScript-specific enhancements
		["@variable.builtin.javascript"] = { fg = c.chrome, italic = true }, -- this, arguments
		["@variable.builtin.typescript"] = { fg = c.chrome, italic = true }, -- this, arguments
		["@type.class.javascript"] = { fg = c.class_teal, bold = true }, -- Class names
		["@type.class.typescript"] = { fg = c.class_teal, bold = true }, -- Class names
		["@constructor.javascript"] = { fg = c.class_teal }, -- Constructor calls
		["@constructor.typescript"] = { fg = c.class_teal }, -- Constructor calls
		["@function.method.javascript"] = { fg = c.steel_blue }, -- Method calls
		["@function.method.typescript"] = { fg = c.steel_blue }, -- Method calls
		["@property.javascript"] = { fg = c.muted_orange }, -- Properties (.data, .name)
		["@property.typescript"] = { fg = c.muted_orange }, -- Properties (.data, .name)
		["@type.annotation.typescript"] = { fg = c.deep_blue }, -- : string, : number
		["@type.parameter.typescript"] = { fg = c.deep_blue }, -- Generic types <T>
		["@punctuation.bracket.typescript"] = { fg = c.steel_grey }, -- < > for generics
		["@keyword.type.typescript"] = { fg = c.mauve }, -- interface, type
		["@storageclass.typescript"] = { fg = c.lavender }, -- public, private, protected
		["@keyword.function.javascript"] = { fg = c.lavender }, -- function, =>
		["@keyword.function.typescript"] = { fg = c.lavender }, -- function, =>
		["@constant.builtin.javascript"] = { fg = c.desaturated_gold }, -- undefined, null
		["@constant.builtin.typescript"] = { fg = c.desaturated_gold }, -- undefined, null
		["@string.template.javascript"] = { fg = c.sage_green }, -- Template literal strings
		["@string.template.typescript"] = { fg = c.sage_green }, -- Template literal strings
		["@punctuation.special.javascript"] = { fg = c.steel_grey }, -- ${} in template literals
		["@punctuation.special.typescript"] = { fg = c.steel_grey }, -- ${} in template literals

		-- JSX/TSX-specific enhancements
		["@tag.builtin.tsx"] = { fg = c.coral }, -- Built-in HTML tags (div, span)
		["@tag.builtin.jsx"] = { fg = c.coral }, -- Built-in HTML tags (div, span)
		["@tag.component.tsx"] = { fg = c.class_teal }, -- Custom components (Button, Modal)
		["@tag.component.jsx"] = { fg = c.class_teal }, -- Custom components (Button, Modal)
		["@tag.attribute.tsx"] = { fg = c.muted_orange }, -- JSX attribute names (className, onClick)
		["@tag.attribute.jsx"] = { fg = c.muted_orange }, -- JSX attribute names (className, onClick)
		["@punctuation.bracket.tsx"] = { fg = c.steel_grey }, -- JSX brackets < >
		["@punctuation.bracket.jsx"] = { fg = c.steel_grey }, -- JSX brackets < >
		["@keyword.tsx"] = { fg = c.lavender }, -- JSX-specific keywords
		["@keyword.jsx"] = { fg = c.lavender }, -- JSX-specific keywords
		["@string.jsx"] = { fg = c.sage_green }, -- JSX string props
		["@string.tsx"] = { fg = c.sage_green }, -- JSX string props
		["@punctuation.delimiter.tsx"] = { fg = c.steel_grey }, -- JSX prop separators
		["@punctuation.delimiter.jsx"] = { fg = c.steel_grey }, -- JSX prop separators
	}

	return theme
end

return M
