local c = require('material.colors')

local hl = vim.api.nvim_set_hl
local theme = {}

theme.set_highlights = function(opts)
    c = vim.tbl_extend('force', c, opts['color_overrides'])
    local isDark = vim.o.background == 'dark'

    hl(0, 'Normal', { fg = c.materialFront, bg = c.materialBack })
    hl(0, 'ColorColumn', { fg = 'NONE', bg = c.materialCursorDarkDark })
    hl(0, 'Cursor', { fg = c.materialCursorDark, bg = c.materialCursorLight })
    hl(0, 'CursorLine', { bg = c.materialCursorDarkDark })
    hl(0, 'CursorColumn', { fg = 'NONE', bg = c.materialCursorDarkDark })
    hl(0, 'Directory', { fg = c.materialBlue, bg = c.materialBack })
    hl(0, 'DiffAdd', { fg = 'NONE', bg = c.materialDiffGreenLight })
    hl(0, 'DiffChange', { fg = 'NONE', bg = c.materialDiffRedDark })
    hl(0, 'DiffDelete', { fg = 'NONE', bg = c.materialDiffRedLight })
    hl(0, 'DiffText', { fg = 'NONE', bg = c.materialDiffRedLight })
    hl(0, 'EndOfBuffer', { fg = c.materialBack, bg = 'NONE' })
    hl(0, 'ErrorMsg', { fg = c.materialRed, bg = c.materialBack })
    hl(0, 'VertSplit', { fg = c.materialSplitDark, bg = c.materialBack })
    hl(0, 'Folded', { fg = 'NONE', bg = c.materialFoldBackground })
    hl(0, 'FoldColumn', { fg = c.materialLineNumber, bg = c.materialBack })
    hl(0, 'SignColumn', { fg = 'NONE', bg = c.materialBack })
    hl(0, 'IncSearch', { fg = c.materialNone, bg = c.materialSearchCurrent })
    hl(0, 'LineNr', { fg = c.materialLineNumber, bg = c.materialBack })
    hl(0, 'CursorLineNr', { fg = c.materialGreen, bg = c.materialBack, bold = true })
    hl(0, 'MatchParen', { fg = c.materialNone, bg = c.materialCursorDark })
    hl(0, 'ModeMsg', { fg = c.materialFront, bg = c.materialLeftDark })
    hl(0, 'MoreMsg', { fg = c.materialFront, bg = c.materialLeftDark })
    hl(0, 'NonText', { fg = (isDark and c.materialLineNumber or c.materialTabOther), bg = c.materialBack })
    hl(0, 'Pmenu', { fg = c.materialPopupFront, bg = c.materialPopupBack })
    hl(0, 'PmenuSel', { fg = isDark and c.materialPopupFront or c.materialBack, bg = c.materialPopupHighlightBlue })
    hl(0, 'PmenuSbar', { fg = 'NONE', bg = c.materialPopupHighlightGray })
    hl(0, 'PmenuThumb', { fg = 'NONE', bg = c.materialPopupFront })
    hl(0, 'Question', { fg = c.materialBlue, bg = c.materialBack })
    hl(0, 'Search', { fg = c.materialNone, bg = c.materialSearch })
    hl(0, 'SpecialKey', { fg = c.materialBlue, bg = c.materialNone })
    hl(0, 'StatusLine', { fg = c.materialFront, bg = c.materialLeftMid })
    hl(0, 'StatusLineNC', { fg = c.materialFront, bg = c.materialLeftDark })
    hl(0, 'TabLine', { fg = c.materialFront, bg = c.materialTabOther })
    hl(0, 'TabLineFill', { fg = c.materialFront, bg = c.materialTabOutside })
    hl(0, 'TabLineSel', { fg = c.materialFront, bg = c.materialTabCurrent })
    hl(0, 'Title', { fg = c.materialNone, bg = c.materialNone, bold = true })
    hl(0, 'Visual', { fg = c.materialSelectionFg, bg = c.materialSelection })
    hl(0, 'VisualNOS', { fg = c.materialNone, bg = c.materialSelection })
    hl(0, 'WarningMsg', { fg = c.materialRed, bg = c.materialBack, bold = true })
    hl(0, 'WildMenu', { fg = c.materialNone, bg = c.materialSelection })
    hl(0, 'Comment', { fg = c.materialGreen, bg = 'NONE', italic = opts.italic_comments })
    hl(0, 'Constant', { fg = c.materialBlue, bg = 'NONE' })
    hl(0, 'String', { fg = c.materialGreen, bg = 'NONE' })
    hl(0, 'Character', { fg = c.materialOrange, bg = 'NONE' })
    hl(0, 'Number', { fg = c.materialLightGreen, bg = 'NONE' })
    hl(0, 'Boolean', { fg = c.materialRed, bg = 'NONE' })
    hl(0, 'Float', { fg = c.materialLightGreen, bg = 'NONE' })
    hl(0, 'Identifier', { fg = c.materialLightBlue, bg = 'NONE' })
    hl(0, 'Function', { fg = c.materialYellow, bg = 'NONE' })
    hl(0, 'Statement', { fg = c.materialPink, bg = 'NONE' })
    hl(0, 'Conditional', { fg = c.materialLightBlue, bg = 'NONE' })
    hl(0, 'Repeat', { fg = c.materialPink, bg = 'NONE' })
    hl(0, 'Label', { fg = c.materialPink, bg = 'NONE' })
    hl(0, 'Operator', { fg = c.materialLightBlue, bg = 'NONE' })
    hl(0, 'Keyword', { fg = c.materialLightBlue, bg = 'NONE' })
    hl(0, 'Exception', { fg = c.materialPink, bg = 'NONE' })
    hl(0, 'PreProc', { fg = c.materialPink, bg = 'NONE' })
    hl(0, 'Include', { fg = c.materialBlue, bg = 'NONE' })
    hl(0, 'Define', { fg = c.materialPink, bg = 'NONE' })
    hl(0, 'Macro', { fg = c.materialPink, bg = 'NONE' })
    hl(0, 'Type', { fg = c.materialBlue, bg = 'NONE' })
    hl(0, 'StorageClass', { fg = c.materialBlue, bg = 'NONE' })
    hl(0, 'Structure', { fg = c.materialBlue, bg = 'NONE' })
    hl(0, 'Typedef', { fg = c.materialBlue, bg = 'NONE' })
    hl(0, 'Special', { fg = c.materialYellowOrange, bg = 'NONE' })
    hl(0, 'SpecialChar', { fg = c.materialFront, bg = 'NONE' })
    hl(0, 'Tag', { fg = c.materialRed, bg = 'NONE' })
    hl(0, 'Delimiter', { fg = c.materialFront, bg = 'NONE' })
    hl(0, 'SpecialComment', { fg = c.materialGreen, bg = 'NONE' })
    hl(0, 'Debug', { fg = c.materialFront, bg = 'NONE' })
    hl(0, 'Underlined', { fg = c.materialNone, bg = 'NONE', underline = true })
    hl(0, 'Conceal', { fg = c.materialFront, bg = c.materialBack })
    hl(0, 'Ignore', { fg = c.materialFront, bg = 'NONE' })
    hl(0, 'Error', { fg = c.materialRed, bg = c.materialBack, undercurl = true, sp = c.materialRed })
    hl(0, 'Todo', { fg = c.materialYellowOrange, bg = c.materialBack, bold = true })
    hl(0, 'SpellBad', { fg = c.materialRed, bg = c.materialBack, undercurl = true, sp = c.materialRed })
    hl(0, 'SpellCap', { fg = c.materialRed, bg = c.materialBack, undercurl = true, sp = c.materialRed })
    hl(0, 'SpellRare', { fg = c.materialRed, bg = c.materialBack, undercurl = true, sp = c.materialRed })
    hl(0, 'SpellLocal', { fg = c.materialRed, bg = c.materialBack, undercurl = true, sp = c.materialRed })
    hl(0, 'Whitespace', { fg = isDark and c.materialLineNumber or c.materialTabOther })

    -- Treesitter
    hl(0, 'TSError', { fg = c.materialRed, bg = 'NONE' })
    hl(0, 'TSPunctBracket', { fg = c.materialLightBlue, bg = 'NONE' })
    hl(0, 'TSPunctSpecial', { fg = c.materialFront, bg = 'NONE' })
    hl(0, 'markdownTSPunctSpecial', { fg = isDark and c.materialBlue or c.materialYellowOrange, bold = true })
    hl(0, 'TSComment', { fg = c.materialGreen, bg = 'NONE', italic = opts.italic_comments })
    hl(0, 'TSConstant', { fg = c.materialYellow, bg = 'NONE' })
    hl(0, 'TSConstBuiltin', { fg = c.materialBlue, bg = 'NONE' })
    hl(0, 'TSConstMacro', { fg = c.materialBlueGreen, bg = 'NONE' })
    hl(0, 'TSStringRegex', { fg = c.materialGreen, bg = 'NONE' })
    hl(0, 'TSString', { fg = c.materialGreen, bg = 'NONE' })
    hl(0, 'TSCharacter', { fg = c.materialOrange, bg = 'NONE' })
    hl(0, 'TSNumber', { fg = c.materialLightGreen, bg = 'NONE' })
    hl(0, 'TSBoolean', { fg = c.materialLightRed, bg = 'NONE' })
    hl(0, 'TSFloat', { fg = c.materialLightGreen, bg = 'NONE' })
    hl(0, 'TSAnnotation', { fg = c.materialYellow, bg = 'NONE' })
    hl(0, 'TSAttribute', { fg = c.materialYellow, bg = 'NONE' })
    hl(0, 'TSNamespace', { fg = c.materialBlueGreen, bg = 'NONE' })
    hl(0, 'TSFuncBuiltin', { fg = c.materialYellow, bg = 'NONE' })
    hl(0, 'TSFunction', { fg = c.materialYellow, bg = 'NONE' })
    hl(0, 'TSFuncMacro', { fg = c.materialYellow, bg = 'NONE' })
    hl(0, 'TSParameter', { fg = c.materialOrange, bg = 'NONE' })
    hl(0, 'TSParameterReference', { fg = c.materialLightBlue, bg = 'NONE' })
    hl(0, 'TSMethod', { fg = c.materialYellow, bg = 'NONE' })
    hl(0, 'TSField', { fg = c.materialLightBlue, bg = 'NONE' })
    hl(0, 'TSProperty', { fg = c.materialWhite, bg = 'NONE' })
    hl(0, 'TSConstructor', { fg = c.materialBlue, bg = 'NONE' })
    hl(0, 'TSConditional', { fg = c.materialLightBlue, bg = 'NONE' })
    hl(0, 'TSRepeat', { fg = c.materialPink, bg = 'NONE' })
    hl(0, 'TSLabel', { fg = c.materialLightBlue, bg = 'NONE' })
    hl(0, 'TSKeyword', { fg = c.materialPurple, bg = 'NONE' })
    hl(0, 'TSKeywordFunction', { fg = c.materialPurple, bg = 'NONE' })
    hl(0, 'TSKeywordOperator', { fg = c.materialBlue, bg = 'NONE' })
    hl(0, 'TSKeywordReturn', { fg = c.materialLightBlue, bg = 'NONE' })
    hl(0, 'TSOperator', { fg = c.materialLightBlue, bg = 'NONE' })
    hl(0, 'TSException', { fg = c.materialPink, bg = 'NONE' })
    hl(0, 'TSType', { fg = c.materialBlueGreen, bg = 'NONE' })
    hl(0, 'TSTypeBuiltin', { fg = c.materialPurple, bg = 'NONE' })
    hl(0, 'TSStructure', { fg = c.materialLightBlue, bg = 'NONE' })
    hl(0, 'TSInclude', { fg = c.materialLightBlue, bg = 'NONE' })
    hl(0, 'TSVariable', { fg = c.materialFront, bg = 'NONE' })
    hl(0, 'TSVariableBuiltin', { fg = c.materialFront, bg = 'NONE' })
    hl(0, 'TSText', { fg = c.materialFront, bg = 'NONE' })
    hl(0, 'TSUnderline', { fg = c.materialYellowOrange, bg = 'NONE' })
    hl(0, 'TSTag', { fg = c.materialRed, bg = 'NONE' })
    hl(0, 'TSTagDelimiter', { fg = c.materialLightBlue, bg = 'NONE' })
    hl(0, 'TSNone', { fg = c.materialFront, bg = 'NONE' })
    hl(0, 'TSTagAttribute', { fg = c.materialYellow, bg = 'NONE' })

    hl(0, 'TSTitle', { fg = isDark and c.materialBlue or c.materialYellowOrange, bold = true })
    hl(0, 'TSLiteral', { fg = c.materialFront, bg = 'NONE' })
    hl(0, 'markdownTSLiteral', { fg = c.materialOrange, bg = 'NONE' })
    hl(0, 'markdown_inlineTSLiteral', { fg = c.materialOrange, bg = 'NONE' })
    hl(0, 'TSEmphasis', { fg = c.materialFront, bg = 'NONE', italic = true })
    hl(0, 'TSStrong', { fg = isDark and c.materialBlue or c.materialViolet, bold = true })
    hl(0, 'TSURI', { fg = c.materialFront, bg = 'NONE' })
    hl(0, 'TSTextReference', { fg = isDark and c.materialOrange or c.materialYellowOrange })
    hl(0, 'TSPunctDelimiter', { fg = c.materialFront, bg = 'NONE' })
    hl(0, 'TSStringEscape', { fg = isDark and c.materialGreen or c.materialGreen, bold = true })

    hl(0, 'TSNote', { fg = c.materialBlueGreen, bg = 'NONE', bold = true })
    hl(0, 'TSWarning', { fg = c.materialYellowOrange, bg = 'NONE', bold = true })
    hl(0, 'TSDanger', { fg = c.materialRed, bg = 'NONE', bold = true })

    -- Markdown
    hl(0, 'markdownBold', { fg = isDark and c.materialBlue or c.materialYellowOrange, bold = true })
    hl(0, 'markdownCode', { fg = c.materialOrange, bg = 'NONE' })
    hl(0, 'markdownRule', { fg = isDark and c.materialBlue or c.materialYellowOrange, bold = true })
    hl(0, 'markdownCodeDelimiter', { fg = c.materialFront, bg = 'NONE' })
    hl(0, 'markdownHeadingDelimiter', { fg = isDark and c.materialBlue or c.materialYellowOrange, bg = 'NONE' })
    hl(0, 'markdownFootnote', { fg = isDark and c.materialOrange or c.materialYellowOrange, bg = 'NONE' })
    hl(0, 'markdownFootnoteDefinition', { fg = isDark and c.materialOrange or c.materialYellowOrange })
    hl(0, 'markdownUrl', { fg = c.materialFront, bg = 'NONE', underline = true })
    hl(0, 'markdownLinkText', { fg = isDark and c.materialOrange or c.materialYellowOrange })
    hl(0, 'markdownEscape', { fg = isDark and c.materialOrange or c.materialYellowOrange })

    -- JSON
    hl(0, 'jsonKeyword', { fg = c.materialLightBlue, bg = 'NONE' })
    hl(0, 'jsonEscape', { fg = c.materialYellowOrange, bg = 'NONE' })
    hl(0, 'jsonNull', { fg = c.materialBlue, bg = 'NONE' })
    hl(0, 'jsonBoolean', { fg = c.materialBlue, bg = 'NONE' })

    -- HTML
    hl(0, 'htmlTag', { fg = c.materialGray, bg = 'NONE' })
    hl(0, 'htmlEndTag', { fg = c.materialGray, bg = 'NONE' })
    hl(0, 'htmlTagName', { fg = c.materialBlue, bg = 'NONE' })
    hl(0, 'htmlSpecialTagName', { fg = c.materialBlue, bg = 'NONE' })
    hl(0, 'htmlArg', { fg = c.materialLightBlue, bg = 'NONE' })

    -- PHP
    hl(0, 'phpStaticClasses', { fg = c.materialBlueGreen, bg = 'NONE' })
    hl(0, 'phpMethod', { fg = c.materialYellow, bg = 'NONE' })
    hl(0, 'phpClass', { fg = c.materialBlueGreen, bg = 'NONE' })
    hl(0, 'phpFunction', { fg = c.materialYellow, bg = 'NONE' })
    hl(0, 'phpInclude', { fg = c.materialBlue, bg = 'NONE' })
    hl(0, 'phpUseClass', { fg = c.materialBlueGreen, bg = 'NONE' })
    hl(0, 'phpRegion', { fg = c.materialBlueGreen, bg = 'NONE' })
    hl(0, 'phpMethodsVar', { fg = c.materialLightBlue, bg = 'NONE' })

    -- CSS
    hl(0, 'cssBraces', { fg = c.materialFront, bg = 'NONE' })
    hl(0, 'cssInclude', { fg = c.materialPink, bg = 'NONE' })
    hl(0, 'cssTagName', { fg = c.materialYellowOrange, bg = 'NONE' })
    hl(0, 'cssClassName', { fg = c.materialYellowOrange, bg = 'NONE' })
    hl(0, 'cssPseudoClass', { fg = c.materialYellowOrange, bg = 'NONE' })
    hl(0, 'cssPseudoClassId', { fg = c.materialYellowOrange, bg = 'NONE' })
    hl(0, 'cssPseudoClassLang', { fg = c.materialYellowOrange, bg = 'NONE' })
    hl(0, 'cssIdentifier', { fg = c.materialYellowOrange, bg = 'NONE' })
    hl(0, 'cssProp', { fg = c.materialLightBlue, bg = 'NONE' })
    hl(0, 'cssDefinition', { fg = c.materialLightBlue, bg = 'NONE' })
    hl(0, 'cssAttr', { fg = c.materialOrange, bg = 'NONE' })
    hl(0, 'cssAttrRegion', { fg = c.materialOrange, bg = 'NONE' })
    hl(0, 'cssColor', { fg = c.materialOrange, bg = 'NONE' })
    hl(0, 'cssFunction', { fg = c.materialOrange, bg = 'NONE' })
    hl(0, 'cssFunctionName', { fg = c.materialOrange, bg = 'NONE' })
    hl(0, 'cssVendor', { fg = c.materialOrange, bg = 'NONE' })
    hl(0, 'cssValueNumber', { fg = c.materialOrange, bg = 'NONE' })
    hl(0, 'cssValueLength', { fg = c.materialOrange, bg = 'NONE' })
    hl(0, 'cssUnitDecorators', { fg = c.materialOrange, bg = 'NONE' })
    hl(0, 'cssStyle', { fg = c.materialLightBlue, bg = 'NONE' })
    hl(0, 'cssImportant', { fg = c.materialBlue, bg = 'NONE' })

    -- JavaScript
    hl(0, 'jsVariableDef', { fg = c.materialLightBlue, bg = 'NONE' })
    hl(0, 'jsFuncArgs', { fg = c.materialLightBlue, bg = 'NONE' })
    hl(0, 'jsFuncBlock', { fg = c.materialLightBlue, bg = 'NONE' })
    hl(0, 'jsRegexpString', { fg = c.materialLightRed, bg = 'NONE' })
    hl(0, 'jsThis', { fg = c.materialBlue, bg = 'NONE' })
    hl(0, 'jsOperatorKeyword', { fg = c.materialBlue, bg = 'NONE' })
    hl(0, 'jsDestructuringBlock', { fg = c.materialLightBlue, bg = 'NONE' })
    hl(0, 'jsObjectKey', { fg = c.materialLightBlue, bg = 'NONE' })
    hl(0, 'jsGlobalObjects', { fg = c.materialBlueGreen, bg = 'NONE' })
    hl(0, 'jsModuleKeyword', { fg = c.materialLightBlue, bg = 'NONE' })
    hl(0, 'jsClassDefinition', { fg = c.materialBlueGreen, bg = 'NONE' })
    hl(0, 'jsClassKeyword', { fg = c.materialBlue, bg = 'NONE' })
    hl(0, 'jsExtendsKeyword', { fg = c.materialBlue, bg = 'NONE' })
    hl(0, 'jsExportDefault', { fg = c.materialPink, bg = 'NONE' })
    hl(0, 'jsFuncCall', { fg = c.materialYellow, bg = 'NONE' })
    hl(0, 'jsObjectValue', { fg = c.materialLightBlue, bg = 'NONE' })
    hl(0, 'jsParen', { fg = c.materialLightBlue, bg = 'NONE' })
    hl(0, 'jsObjectProp', { fg = c.materialLightBlue, bg = 'NONE' })
    hl(0, 'jsIfElseBlock', { fg = c.materialLightBlue, bg = 'NONE' })
    hl(0, 'jsParenIfElse', { fg = c.materialLightBlue, bg = 'NONE' })
    hl(0, 'jsSpreadOperator', { fg = c.materialLightBlue, bg = 'NONE' })
    hl(0, 'jsSpreadExpression', { fg = c.materialLightBlue, bg = 'NONE' })

    -- Typescript
    hl(0, 'typescriptLabel', { fg = c.materialLightBlue, bg = 'NONE' })
    hl(0, 'typescriptExceptions', { fg = c.materialLightBlue, bg = 'NONE' })
    hl(0, 'typescriptBraces', { fg = c.materialFront, bg = 'NONE' })
    hl(0, 'typescriptEndColons', { fg = c.materialLightBlue, bg = 'NONE' })
    hl(0, 'typescriptParens', { fg = c.materialFront, bg = 'NONE' })
    hl(0, 'typescriptDocTags', { fg = c.materialBlue, bg = 'NONE' })
    hl(0, 'typescriptDocComment', { fg = c.materialBlueGreen, bg = 'NONE' })
    hl(0, 'typescriptLogicSymbols', { fg = c.materialLightBlue, bg = 'NONE' })
    hl(0, 'typescriptImport', { fg = c.materialPink, bg = 'NONE' })
    hl(0, 'typescriptBOM', { fg = c.materialLightBlue, bg = 'NONE' })
    hl(0, 'typescriptVariableDeclaration', { fg = c.materialLightBlue, bg = 'NONE' })
    hl(0, 'typescriptVariable', { fg = c.materialBlue, bg = 'NONE' })
    hl(0, 'typescriptExport', { fg = c.materialPink, bg = 'NONE' })
    hl(0, 'typescriptAliasDeclaration', { fg = c.materialBlueGreen, bg = 'NONE' })
    hl(0, 'typescriptAliasKeyword', { fg = c.materialBlue, bg = 'NONE' })
    hl(0, 'typescriptClassName', { fg = c.materialBlueGreen, bg = 'NONE' })
    hl(0, 'typescriptAccessibilityModifier', { fg = c.materialBlue, bg = 'NONE' })
    hl(0, 'typescriptOperator', { fg = c.materialBlue, bg = 'NONE' })
    hl(0, 'typescriptArrowFunc', { fg = c.materialBlue, bg = 'NONE' })
    hl(0, 'typescriptMethodAccessor', { fg = c.materialBlue, bg = 'NONE' })
    hl(0, 'typescriptMember', { fg = c.materialYellow, bg = 'NONE' })
    hl(0, 'typescriptTypeReference', { fg = c.materialBlueGreen, bg = 'NONE' })
    hl(0, 'typescriptTemplateSB', { fg = c.materialYellowOrange, bg = 'NONE' })
    hl(0, 'typescriptArrowFuncArg', { fg = c.materialLightBlue, bg = 'NONE' })
    hl(0, 'typescriptParamImpl', { fg = c.materialLightBlue, bg = 'NONE' })
    hl(0, 'typescriptFuncComma', { fg = c.materialLightBlue, bg = 'NONE' })
    hl(0, 'typescriptCastKeyword', { fg = c.materialLightBlue, bg = 'NONE' })
    hl(0, 'typescriptCall', { fg = c.materialBlue, bg = 'NONE' })
    hl(0, 'typescriptCase', { fg = c.materialLightBlue, bg = 'NONE' })
    hl(0, 'typescriptReserved', { fg = c.materialPink, bg = 'NONE' })
    hl(0, 'typescriptDefault', { fg = c.materialLightBlue, bg = 'NONE' })
    hl(0, 'typescriptDecorator', { fg = c.materialYellow, bg = 'NONE' })
    hl(0, 'typescriptPredefinedType', { fg = c.materialBlueGreen, bg = 'NONE' })
    hl(0, 'typescriptClassHeritage', { fg = c.materialBlueGreen, bg = 'NONE' })
    hl(0, 'typescriptClassExtends', { fg = c.materialBlue, bg = 'NONE' })
    hl(0, 'typescriptClassKeyword', { fg = c.materialBlue, bg = 'NONE' })
    hl(0, 'typescriptBlock', { fg = c.materialLightBlue, bg = 'NONE' })
    hl(0, 'typescriptDOMDocProp', { fg = c.materialLightBlue, bg = 'NONE' })
    hl(0, 'typescriptTemplateSubstitution', { fg = c.materialLightBlue, bg = 'NONE' })
    hl(0, 'typescriptClassBlock', { fg = c.materialLightBlue, bg = 'NONE' })
    hl(0, 'typescriptFuncCallArg', { fg = c.materialLightBlue, bg = 'NONE' })
    hl(0, 'typescriptIndexExpr', { fg = c.materialLightBlue, bg = 'NONE' })
    hl(0, 'typescriptConditionalParen', { fg = c.materialLightBlue, bg = 'NONE' })
    hl(0, 'typescriptArray', { fg = c.materialYellow, bg = 'NONE' })
    hl(0, 'typescriptES6SetProp', { fg = c.materialLightBlue, bg = 'NONE' })
    hl(0, 'typescriptObjectLiteral', { fg = c.materialLightBlue, bg = 'NONE' })
    hl(0, 'typescriptTypeParameter', { fg = c.materialBlueGreen, bg = 'NONE' })
    hl(0, 'typescriptEnumKeyword', { fg = c.materialBlue, bg = 'NONE' })
    hl(0, 'typescriptEnum', { fg = c.materialBlueGreen, bg = 'NONE' })
    hl(0, 'typescriptLoopParen', { fg = c.materialLightBlue, bg = 'NONE' })
    hl(0, 'typescriptParenExp', { fg = c.materialLightBlue, bg = 'NONE' })
    hl(0, 'typescriptModule', { fg = c.materialLightBlue, bg = 'NONE' })
    hl(0, 'typescriptAmbientDeclaration', { fg = c.materialBlue, bg = 'NONE' })
    hl(0, 'typescriptFuncTypeArrow', { fg = c.materialBlue, bg = 'NONE' })
    hl(0, 'typescriptInterfaceHeritage', { fg = c.materialBlueGreen, bg = 'NONE' })
    hl(0, 'typescriptInterfaceName', { fg = c.materialBlueGreen, bg = 'NONE' })
    hl(0, 'typescriptInterfaceKeyword', { fg = c.materialBlue, bg = 'NONE' })
    hl(0, 'typescriptInterfaceExtends', { fg = c.materialBlue, bg = 'NONE' })
    hl(0, 'typescriptGlobal', { fg = c.materialBlueGreen, bg = 'NONE' })
    hl(0, 'typescriptAsyncFuncKeyword', { fg = c.materialBlue, bg = 'NONE' })
    hl(0, 'typescriptFuncKeyword', { fg = c.materialBlue, bg = 'NONE' })
    hl(0, 'typescriptGlobalMethod', { fg = c.materialYellow, bg = 'NONE' })
    hl(0, 'typescriptPromiseMethod', { fg = c.materialYellow, bg = 'NONE' })

    -- XML
    hl(0, 'xmlTag', { fg = c.materialBlue, bg = 'NONE' })
    hl(0, 'xmlTagName', { fg = c.materialBlue, bg = 'NONE' })
    hl(0, 'xmlEndTag', { fg = c.materialBlue, bg = 'NONE' })

    -- Ruby
    hl(0, 'rubyClassNameTag', { fg = c.materialBlueGreen, bg = 'NONE' })
    hl(0, 'rubyClassName', { fg = c.materialBlueGreen, bg = 'NONE' })
    hl(0, 'rubyModuleName', { fg = c.materialBlueGreen, bg = 'NONE' })
    hl(0, 'rubyConstant', { fg = c.materialBlueGreen, bg = 'NONE' })

    -- Golang
    hl(0, 'goPackage', { fg = c.materialBlue, bg = 'NONE' })
    hl(0, 'goImport', { fg = c.materialBlue, bg = 'NONE' })
    hl(0, 'goVar', { fg = c.materialBlue, bg = 'NONE' })
    hl(0, 'goConst', { fg = c.materialBlue, bg = 'NONE' })
    hl(0, 'goStatement', { fg = c.materialPink, bg = 'NONE' })
    hl(0, 'goType', { fg = c.materialBlueGreen, bg = 'NONE' })
    hl(0, 'goSignedInts', { fg = c.materialBlueGreen, bg = 'NONE' })
    hl(0, 'goUnsignedInts', { fg = c.materialBlueGreen, bg = 'NONE' })
    hl(0, 'goFloats', { fg = c.materialBlueGreen, bg = 'NONE' })
    hl(0, 'goComplexes', { fg = c.materialBlueGreen, bg = 'NONE' })
    hl(0, 'goBuiltins', { fg = c.materialYellow, bg = 'NONE' })
    hl(0, 'goBoolean', { fg = c.materialBlue, bg = 'NONE' })
    hl(0, 'goPredefinedIdentifiers', { fg = c.materialBlue, bg = 'NONE' })
    hl(0, 'goTodo', { fg = c.materialGreen, bg = 'NONE' })
    hl(0, 'goDeclaration', { fg = c.materialBlue, bg = 'NONE' })
    hl(0, 'goDeclType', { fg = c.materialBlue, bg = 'NONE' })
    hl(0, 'goTypeDecl', { fg = c.materialBlue, bg = 'NONE' })
    hl(0, 'goTypeName', { fg = c.materialBlueGreen, bg = 'NONE' })
    hl(0, 'goVarAssign', { fg = c.materialLightBlue, bg = 'NONE' })
    hl(0, 'goVarDefs', { fg = c.materialLightBlue, bg = 'NONE' })
    hl(0, 'goReceiver', { fg = c.materialFront, bg = 'NONE' })
    hl(0, 'goReceiverType', { fg = c.materialFront, bg = 'NONE' })
    hl(0, 'goFunctionCall', { fg = c.materialYellow, bg = 'NONE' })
    hl(0, 'goMethodCall', { fg = c.materialYellow, bg = 'NONE' })
    hl(0, 'goSingleDecl', { fg = c.materialLightBlue, bg = 'NONE' })

    -- Python
    hl(0, 'pythonStatement', { fg = c.materialBlue, bg = 'NONE' })
    hl(0, 'pythonOperator', { fg = c.materialBlue, bg = 'NONE' })
    hl(0, 'pythonException', { fg = c.materialPink, bg = 'NONE' })
    hl(0, 'pythonExClass', { fg = c.materialBlueGreen, bg = 'NONE' })
    hl(0, 'pythonBuiltinObj', { fg = c.materialLightBlue, bg = 'NONE' })
    hl(0, 'pythonBuiltinType', { fg = c.materialBlueGreen, bg = 'NONE' })
    hl(0, 'pythonBoolean', { fg = c.materialBlue, bg = 'NONE' })
    hl(0, 'pythonNone', { fg = c.materialBlue, bg = 'NONE' })
    hl(0, 'pythonTodo', { fg = c.materialBlue, bg = 'NONE' })
    hl(0, 'pythonClassVar', { fg = c.materialBlue, bg = 'NONE' })
    hl(0, 'pythonClassDef', { fg = c.materialBlueGreen, bg = 'NONE' })

    -- TeX
    hl(0, 'texStatement', { fg = c.materialBlue, bg = 'NONE' })
    hl(0, 'texBeginEnd', { fg = c.materialYellow, bg = 'NONE' })
    hl(0, 'texBeginEndName', { fg = c.materialLightBlue, bg = 'NONE' })
    hl(0, 'texOption', { fg = c.materialLightBlue, bg = 'NONE' })
    hl(0, 'texBeginEndModifier', { fg = c.materialLightBlue, bg = 'NONE' })
    hl(0, 'texDocType', { fg = c.materialPink, bg = 'NONE' })
    hl(0, 'texDocTypeArgs', { fg = c.materialLightBlue, bg = 'NONE' })

    -- Git
    hl(0, 'gitcommitHeader', { fg = c.materialGray, bg = 'NONE' })
    hl(0, 'gitcommitOnBranch', { fg = c.materialGray, bg = 'NONE' })
    hl(0, 'gitcommitBranch', { fg = c.materialPink, bg = 'NONE' })
    hl(0, 'gitcommitComment', { fg = c.materialGray, bg = 'NONE' })
    hl(0, 'gitcommitSelectedType', { fg = c.materialGreen, bg = 'NONE' })
    hl(0, 'gitcommitSelectedFile', { fg = c.materialGreen, bg = 'NONE' })
    hl(0, 'gitcommitDiscardedType', { fg = c.materialRed, bg = 'NONE' })
    hl(0, 'gitcommitDiscardedFile', { fg = c.materialRed, bg = 'NONE' })
    hl(0, 'gitcommitOverflow', { fg = c.materialRed, bg = 'NONE' })
    hl(0, 'gitcommitSummary', { fg = c.materialPink, bg = 'NONE' })
    hl(0, 'gitcommitBlank', { fg = c.materialPink, bg = 'NONE' })

    -- Lua
    hl(0, 'luaFuncCall', { fg = c.materialYellow, bg = 'NONE' })
    hl(0, 'luaFuncArgName', { fg = c.materialLightBlue, bg = 'NONE' })
    hl(0, 'luaFuncKeyword', { fg = c.materialPink, bg = 'NONE' })
    hl(0, 'luaLocal', { fg = c.materialPink, bg = 'NONE' })
    hl(0, 'luaBuiltIn', { fg = c.materialBlue, bg = 'NONE' })

    -- SH
    hl(0, 'shDeref', { fg = c.materialLightBlue, bg = 'NONE' })
    hl(0, 'shVariable', { fg = c.materialLightBlue, bg = 'NONE' })

    -- SQL
    hl(0, 'sqlKeyword', { fg = c.materialPink, bg = 'NONE' })
    hl(0, 'sqlFunction', { fg = c.materialYellowOrange, bg = 'NONE' })
    hl(0, 'sqlOperator', { fg = c.materialPink, bg = 'NONE' })

    -- YAML
    hl(0, 'yamlKey', { fg = c.materialBlue, bg = 'NONE' })
    hl(0, 'yamlConstant', { fg = c.materialBlue, bg = 'NONE' })

    -- Gitgutter
    hl(0, 'GitGutterAdd', { fg = c.materialGreen, bg = 'NONE' })
    hl(0, 'GitGutterChange', { fg = c.materialYellow, bg = 'NONE' })
    hl(0, 'GitGutterDelete', { fg = c.materialRed, bg = 'NONE' })

    -- Git Signs
    hl(0, 'GitSignsAdd', { fg = c.materialGreen, bg = 'NONE' })
    hl(0, 'GitSignsChange', { fg = c.materialYellow, bg = 'NONE' })
    hl(0, 'GitSignsDelete', { fg = c.materialRed, bg = 'NONE' })
    hl(0, 'GitSignsAddLn', { fg = c.materialBack, bg = c.materialGreen })
    hl(0, 'GitSignsChangeLn', { fg = c.materialBack, bg = c.materialYellow })
    hl(0, 'GitSignsDeleteLn', { fg = c.materialBack, bg = c.materialRed })

    -- NvimTree
    hl(0, 'NvimTreeRootFolder', { fg = c.materialFront, bg = 'NONE', bold = true })
    hl(0, 'NvimTreeGitDirty', { fg = c.materialYellow, bg = 'NONE' })
    hl(0, 'NvimTreeGitNew', { fg = c.materialGreen, bg = 'NONE' })
    hl(0, 'NvimTreeImageFile', { fg = c.materialViolet, bg = 'NONE' })
    hl(0, 'NvimTreeEmptyFolderName', { fg = c.materialGray, bg = 'NONE' })
    hl(0, 'NvimTreeFolderName', { fg = c.materialFront, bg = 'NONE' })
    hl(0, 'NvimTreeSpecialFile', { fg = c.materialPink, bg = 'NONE', underline = true })
    hl(0, 'NvimTreeNormal', { fg = c.materialFront, bg = opts.disable_nvimtree_bg and c.materialBack or c.materialLeftDark })
    hl(0, 'NvimTreeCursorLine', { fg = 'NONE', bg = opts.disable_nvimtree_bg and c.materialCursorDarkDark or c.materialLeftMid })
    hl(0, 'NvimTreeVertSplit', { fg = opts.disable_nvimtree_bg and c.materialSplitDark or c.materialBack, bg = c.materialBack })
    hl(0, 'NvimTreeEndOfBuffer', { fg = opts.disable_nvimtree_bg and c.materialCursorDarkDark or c.materialLeftDark })
    hl(0, 'NvimTreeOpenedFolderName', { fg = 'NONE', bg = opts.disable_nvimtree_bg and c.materialCursorDarkDark or c.materialLeftDark })

    -- Bufferline
    hl(0, 'BufferLineIndicatorSelected', { fg = c.materialLeftDark, bg = 'NONE' })
    hl(0, 'BufferLineFill', { fg = 'NONE', bg = c.materialLeftDark })

    -- BarBar
    hl(0, 'BufferCurrent', { fg = c.materialFront, bg = c.materialTabCurrent })
    hl(0, 'BufferCurrentIndex', { fg = c.materialFront, bg = c.materialTabCurrent })
    hl(0, 'BufferCurrentMod', { fg = c.materialYellowOrange, bg = c.materialTabCurrent })
    hl(0, 'BufferCurrentSign', { fg = c.materialFront, bg = c.materialTabCurrent })
    hl(0, 'BufferCurrentTarget', { fg = c.materialRed, bg = c.materialTabCurrent })
    hl(0, 'BufferVisible', { fg = c.materialGray, bg = c.materialTabCurrent })
    hl(0, 'BufferVisibleIndex', { fg = c.materialGray, bg = c.materialTabCurrent })
    hl(0, 'BufferVisibleMod', { fg = c.materialYellowOrange, bg = c.materialTabCurrent })
    hl(0, 'BufferVisibleSign', { fg = c.materialGray, bg = c.materialTabCurrent })
    hl(0, 'BufferVisibleTarget', { fg = c.materialRed, bg = c.materialTabCurrent })
    hl(0, 'BufferInactive', { fg = c.materialGray, bg = c.materialTabOther })
    hl(0, 'BufferInactiveIndex', { fg = c.materialGray, bg = c.materialTabOther })
    hl(0, 'BufferInactiveMod', { fg = c.materialYellowOrange, bg = c.materialTabOther })
    hl(0, 'BufferInactiveSign', { fg = c.materialGray, bg = c.materialTabOther })
    hl(0, 'BufferInactiveTarget', { fg = c.materialRed, bg = c.materialTabOther })
    hl(0, 'BufferTabpages', { fg = c.materialFront, bg = c.materialTabOther })
    hl(0, 'BufferTabpagesFill', { fg = c.materialFront, bg = c.materialTabOther })

    -- IndentBlankLine
    hl(0, 'IndentBlanklineContextChar', { fg = c.materialContextCurrent, bg = 'NONE', nocombine = true })
    hl(0, 'IndentBlanklineContextStart', { fg = c.materialContextCurrent, bg = 'NONE', nocombine = true })
    hl(0, 'IndentBlanklineChar', { fg = c.materialContext, bg = 'NONE', nocombine = true })
    hl(0, 'IndentBlanklineSpaceChar', { fg = c.materialContext, bg = 'NONE', nocombine = true })
    hl(0, 'IndentBlanklineSpaceCharBlankline', { fg = c.materialContext, bg = 'NONE', nocombine = true })

    -- LSP
    hl(0, 'DiagnosticError', { fg = c.materialRed, bg = 'NONE' })
    hl(0, 'DiagnosticWarn', { fg = c.materialYellow, bg = 'NONE' })
    hl(0, 'DiagnosticInfo', { fg = c.materialBlue, bg = 'NONE' })
    hl(0, 'DiagnosticHint', { fg = c.materialBlue, bg = 'NONE' })
    hl(0, 'DiagnosticUnderlineError', { fg = 'NONE', bg = 'NONE', undercurl = true, sp = c.materialRed })
    hl(0, 'DiagnosticUnderlineWarn', { fg = 'NONE', bg = 'NONE', undercurl = true, sp = c.materialYellow })
    hl(0, 'DiagnosticUnderlineInfo', { fg = 'NONE', bg = 'NONE', undercurl = true, sp = c.materialBlue })
    hl(0, 'DiagnosticUnderlineHint', { fg = 'NONE', bg = 'NONE', undercurl = true, sp = c.materialBlue })
    hl(0, 'LspReferenceText', { fg = 'NONE', bg = isDark and c.materialPopupHighlightGray or c.materialPopupHighlightLightBlue })
    hl(0, 'LspReferenceRead', { fg = 'NONE', bg = isDark and c.materialPopupHighlightGray or c.materialPopupHighlightLightBlue })
    hl(0, 'LspReferenceWrite', { fg = 'NONE', bg = isDark and c.materialPopupHighlightGray or c.materialPopupHighlightLightBlue })

    -- Nvim compe
    hl(0, 'CmpItemKindVariable', { fg = c.materialLightBlue, bg = 'NONE' })
    hl(0, 'CmpItemKindInterface', { fg = c.materialLightBlue, bg = 'NONE' })
    hl(0, 'CmpItemKindText', { fg = c.materialLightBlue, bg = 'NONE' })
    hl(0, 'CmpItemKindFunction', { fg = c.materialPink, bg = 'NONE' })
    hl(0, 'CmpItemKindMethod', { fg = c.materialPink, bg = 'NONE' })
    hl(0, 'CmpItemKindKeyword', { fg = c.materialFront, bg = 'NONE' })
    hl(0, 'CmpItemKindProperty', { fg = c.materialFront, bg = 'NONE' })
    hl(0, 'CmpItemKindUnit', { fg = c.materialFront, bg = 'NONE' })
    hl(0, 'CmpItemKindConstructor', { fg = c.materialUiOrange, bg = 'NONE' })
    hl(0, 'CmpItemMenu', { fg = c.materialPopupFront, bg = 'NONE' })
    hl(0, 'CmpItemAbbr', { fg = c.materialFront, bg = 'NONE' })
    hl(0, 'CmpItemAbbrDeprecated', { fg = c.materialCursorDark, bg = c.materialPopupBack, strikethrough = true })
    hl(0, 'CmpItemAbbrMatch', { fg = isDark and c.materialMediumBlue or c.materialDarkBlue, bg = 'NONE', bold = true })
    hl(0, 'CmpItemAbbrMatchFuzzy', { fg = isDark and c.materialMediumBlue or c.materialDarkBlue, bg = 'NONE', bold = true })

    -- Dashboard
    hl(0, 'DashboardHeader', { fg = c.materialBlue, bg = 'NONE' })
    hl(0, 'DashboardCenter', { fg = c.materialYellowOrange, bg = 'NONE' })
    hl(0, 'DashboardCenterIcon', { fg = c.materialYellowOrange, bg = 'NONE' })
    hl(0, 'DashboardShortCut', { fg = c.materialPink, bg = 'NONE' })
    hl(0, 'DashboardFooter', { fg = c.materialBlue, bg = 'NONE', italic = true })

    if isDark then
        hl(0, 'NvimTreeFolderIcon', { fg = c.materialBlue, bg = 'NONE' })
        hl(0, 'NvimTreeIndentMarker', { fg = c.materialLineNumber, bg = 'NONE' })

        hl(0, 'LspFloatWinNormal', { fg = c.materialFront, bg = 'NONE' })
        hl(0, 'LspFloatWinBorder', { fg = c.materialLineNumber, bg = 'NONE' })
        hl(0, 'LspSagaHoverBorder', { fg = c.materialLineNumber, bg = 'NONE' })
        hl(0, 'LspSagaSignatureHelpBorder', { fg = c.materialLineNumber, bg = 'NONE' })
        hl(0, 'LspSagaCodeActionBorder', { fg = c.materialLineNumber, bg = 'NONE' })
        hl(0, 'LspSagaDefPreviewBorder', { fg = c.materialLineNumber, bg = 'NONE' })
        hl(0, 'LspLinesDiagBorder', { fg = c.materialLineNumber, bg = 'NONE' })
        hl(0, 'LspSagaRenameBorder', { fg = c.materialLineNumber, bg = 'NONE' })
        hl(0, 'LspSagaBorderTitle', { fg = c.materialCursorDark, bg = 'NONE' })
        hl(0, 'LSPSagaDiagnosticTruncateLine', { fg = c.materialLineNumber, bg = 'NONE' })
        hl(0, 'LspSagaDiagnosticBorder', { fg = c.materialLineNumber, bg = 'NONE' })
        hl(0, 'LspSagaDiagnosticBorder', { fg = c.materialLineNumber, bg = 'NONE' })
        hl(0, 'LspSagaShTruncateLine', { fg = c.materialLineNumber, bg = 'NONE' })
        hl(0, 'LspSagaShTruncateLine', { fg = c.materialLineNumber, bg = 'NONE' })
        hl(0, 'LspSagaDocTruncateLine', { fg = c.materialLineNumber, bg = 'NONE' })
        hl(0, 'LspSagaRenameBorder', { fg = c.materialLineNumber, bg = 'NONE' })
        hl(0, 'LspSagaLspFinderBorder', { fg = c.materialLineNumber, bg = 'NONE' })

        hl(0, 'TelescopePromptBorder', { fg = c.materialLineNumber, bg = 'NONE' })
        hl(0, 'TelescopeResultsBorder', { fg = c.materialLineNumber, bg = 'NONE' })
        hl(0, 'TelescopePreviewBorder', { fg = c.materialLineNumber, bg = 'NONE' })
        hl(0, 'TelescopeNormal', { fg = c.materialFront, bg = 'NONE' })
        hl(0, 'TelescopeSelection', { fg = c.materialFront, bg = c.materialPopupHighlightBlue })
        hl(0, 'TelescopeMultiSelection', { fg = c.materialFront, bg = c.materialPopupHighlightBlue })
        hl(0, 'TelescopeMatching', { fg = c.materialMediumBlue, bg = 'NONE', bold = true })
        hl(0, 'TelescopePromptPrefix', { fg = c.materialFront, bg = 'NONE' })

        -- symbols-outline
        -- white fg and lualine blue bg
        hl(0, 'FocusedSymbol', { fg = '#ffffff', bg = c.materialUiBlue })
        hl(0, 'SymbolsOutlineConnector', { fg = c.materialLineNumber, bg = 'NONE' })
    else
        hl(0, 'NvimTreeFolderIcon', { fg = c.materialDarkBlue, bg = 'NONE' })
        hl(0, 'NvimTreeIndentMarker', { fg = c.materialTabOther, bg = 'NONE' })

        hl(0, 'LspFloatWinNormal', { fg = c.materialFront, bg = 'NONE' })
        hl(0, 'LspFloatWinBorder', { fg = c.materialTabOther, bg = 'NONE' })
        hl(0, 'LspSagaHoverBorder', { fg = c.materialTabOther, bg = 'NONE' })
        hl(0, 'LspSagaSignatureHelpBorder', { fg = c.materialTabOther, bg = 'NONE' })
        hl(0, 'LspSagaCodeActionBorder', { fg = c.materialTabOther, bg = 'NONE' })
        hl(0, 'LspSagaDefPreviewBorder', { fg = c.materialTabOther, bg = 'NONE' })
        hl(0, 'LspLinesDiagBorder', { fg = c.materialTabOther, bg = 'NONE' })
        hl(0, 'LspSagaRenameBorder', { fg = c.materialTabOther, bg = 'NONE' })
        hl(0, 'LspSagaBorderTitle', { fg = c.materialCursorDark, bg = 'NONE' })
        hl(0, 'LSPSagaDiagnosticTruncateLine', { fg = c.materialTabOther, bg = 'NONE' })
        hl(0, 'LspSagaDiagnosticBorder', { fg = c.materialTabOther, bg = 'NONE' })
        hl(0, 'LspSagaDiagnosticBorder', { fg = c.materialTabOther, bg = 'NONE' })
        hl(0, 'LspSagaShTruncateLine', { fg = c.materialTabOther, bg = 'NONE' })
        hl(0, 'LspSagaShTruncateLine', { fg = c.materialTabOther, bg = 'NONE' })
        hl(0, 'LspSagaDocTruncateLine', { fg = c.materialTabOther, bg = 'NONE' })
        hl(0, 'LspSagaRenameBorder', { fg = c.materialTabOther, bg = 'NONE' })
        hl(0, 'LspSagaLspFinderBorder', { fg = c.materialTabOther, bg = 'NONE' })

        hl(0, 'TelescopePromptBorder', { fg=c.materialTabOther, bg='NONE' })
        hl(0, 'TelescopeResultsBorder', { fg=c.materialTabOther, bg='NONE' })
        hl(0, 'TelescopePreviewBorder', { fg=c.materialTabOther, bg='NONE' })
        hl(0, 'TelescopeNormal', { fg=c.materialFront, bg='NONE' })
        hl(0, 'TelescopeSelection', { fg=c.materialBack, bg=c.materialPopupHighlightBlue })
        hl(0, 'TelescopeMultiSelection', { fg=c.materialBack, bg=c.materialPopupHighlightBlue })
        hl(0, 'TelescopeMatching', { fg=c.materialDarkBlue, bg='NONE', bold=true, nil  })
        hl(0, 'TelescopePromptPrefix', { fg=c.materialFront, bg='NONE' })

        -- symbols-outline
        -- white fg and lualine blue bg
        hl(0, 'FocusedSymbol', { fg=c.materialBack, bg='#AF00DB' })
        hl(0, 'SymbolsOutlineConnector', { fg=c.materialTabOther, bg='NONE' })
    end
end

theme.link_highlight = function()
    -- Legacy groups for official git.vim and diff.vim syntax
    hl(0, 'diffAdded', { link = 'DiffAdd' })
    hl(0, 'diffChanged', { link = 'DiffChange' })
    hl(0, 'diffRemoved', { link = 'DiffDelete' })
    -- Nvim compe
    hl(0, 'CompeDocumentation', { link = 'Pmenu' })
    hl(0, 'CompeDocumentationBorder', { link = 'Pmenu' })
    hl(0, 'CmpItemKind', { link = 'Pmenu' })
    hl(0, 'CmpItemKindClass', { link = 'CmpItemKindConstructor' })
    hl(0, 'CmpItemKindModule', { link = 'CmpItemKindKeyword' })
    hl(0, 'CmpItemKindOperator', { link = 'TSOperator' })
    hl(0, 'CmpItemKindReference', { link = 'TSParameterReference' })
    hl(0, 'CmpItemKindValue', { link = 'TSField' })
    hl(0, 'CmpItemKindField', { link = 'TSField' })
    hl(0, 'CmpItemKindEnum', { link = 'TSField' })
    hl(0, 'CmpItemKindSnippet', { link = 'TSText' })
    hl(0, 'CmpItemKindColor', { link = 'cssColor' })
    hl(0, 'CmpItemKindFile', { link = 'TSURI' })
    hl(0, 'CmpItemKindFolder', { link = 'TSURI' })
    hl(0, 'CmpItemKindEvent', { link = 'TSConstant' })
    hl(0, 'CmpItemKindEnumMember', { link = 'TSField' })
    hl(0, 'CmpItemKindConstant', { link = 'TSConstant' })
    hl(0, 'CmpItemKindStruct', { link = 'TSStructure' })
    hl(0, 'CmpItemKindTypeParameter', { link = 'TSParameter' })
end

return theme
