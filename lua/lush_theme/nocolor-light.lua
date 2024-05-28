-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--
-- Enable lush.ify on this file, run:
--  `:Lushify`

local lush = require("lush")

local hsl  = lush.hsl

local black   = hsl(0,0,0)
local white   = hsl(0,0,100)

local yellow  = hsl(40,100,52)
local red     = hsl(344,100,28)
local green   = hsl(154,85,36)
local purple  = hsl(295,95,40)
local blue    = hsl(207,100,42)
local cyan    = hsl(176,69,41)

---@diagnostic disable: undefined-global
local theme = lush( function(injected_functions)
  local sym = injected_functions.sym
  return { Normal         { bg = white.da(4), fg = black.li(20) }
         , NormalNC       { }
         , Conceal        { }
         , Cursor         { Normal, reverse = true }
         , lCursor        { Cursor }
         , CursorIM       { Cursor }
         , TermCursor     { Cursor }
         , TermCursorNC   { TermCursor }

         , CurSearch      { bg = black, fg = white, bold = true }
         , Search         { bg = CurSearch.bg.li(20), fg = CurSearch.fg.da(20) }
         , IncSearch      { Search }

         , ColorColumn    { bg = white.da(20) }
         , CursorColumn   { bg = white.da(15) }
         , CursorLine     { bg = white.da(15) }

         , Directory      { fg = black.li(15), bold = true }

         , DiffAdd        { fg = black.li(10) }
         , DiffChange     { fg = black.li(30) }
         , DiffDelete     { fg = black.li(50) }
         , DiffText       { fg = black.li(25) }

         , EndOfBuffer    { fg = white.da(15) }
         , NonText        { fg = white.da(15) }
         , Whitespace     { NonText }

         , ErrorMsg       { fg = white.da(5), bg = red.de(30) }
         , WarningMsg     { bg = yellow.de(50), fg = black.li(5) }
         , Underlined     { underline = true }
         , Ignore         { fg = white.da(30) }
         , Error          { ErrorMsg }
         , Todo           { fg = black.li(4), undercurl = true, sp = yellow.de(50) }

         , VertSplit      { fg = Normal.fg.li(10) }

         , Folded         { fg = black.li(30) }
         , FoldColumn     { Folded }

         , SignColumn     { bold = true }

         , Substitute     { underline = true}

         , LineNr         { fg = Normal.fg.da(10), bold = false }
         , LineNrAbove    { LineNr }
         , LineNrBelow    { LineNr }
         , CursorLineNr   { LineNr, bold = true }

         , CursorLineFold { CursorLine }
         , CursorLineSign { SignColumn }

         , MatchParen     { bg = Normal.bg.da(15), fg = black, bold = true }

         , MsgArea        { }
         , MsgSeparator   { }
         , MoreMsg        { MsgArea, bold = true }
         , ModeMsg        { MoreMsg }

         , NormalFloat    { Normal, bg = white.da(15) }
         , FloatBorder    { NormalFloat, fg = black }
         , FloatTitle     { NormalFloat, underline = true }

         , Pmenu          { NormalFloat }
         , PmenuSel       { bg = Pmenu.bg.da(25), fg = Pmenu.fg.li(4) }
         , PmenuKind      { Pmenu }
         , PmenuKindSel   { PmenuSel }
         , PmenuExtra     { Pmenu }
         , PmenuExtraSel  { PmenuSel }
         , PmenuSbar      { Pmenu }
         , PmenuThumb     { Pmenu, reverse = true }

         , Question       { fg = black }
         , QuickFixLine   { CursorLine }

         , SpecialKey     { fg = black, underline = true }

         , SpellBad       { undercurl = true, sp = red.de(50) }
         , SpellCap       { undercurl = true, sp = green.de(50) }
         , SpellLocal     { undercurl = true, sp = blue.de(50) }
         , SpellRare      { undercurl = true, sp = purple.de(50) }

         -- , StatusLine     { }
         -- , StatusLineNC   { }

         , TabLineFill    { fg = black, bg = white }
         , TabLine        { fg = black, bg = TabLineFill.bg.da(15) }
         , TabLineSel     { fg = black, bg = TabLineFill.bg.da(25), bold = true }

         , Title          { underline = true }

         , Visual         { reverse = true }
         , VisualNOS      { reverse = true }

         , Winseparator   { VertSplit }
         , WildMenu       { PmenuSel }
         , WinBar         { Pmenu }
         , WinBarNC       { Pmenu }

         , Comment        { fg = black.li(65), italic = true }

         , Constant       { fg = black.li(50) }
         , String         { Constant }
         , Character      { Constant }
         , Number         { Constant }
         , Boolean        { Constant, bold = true }
         , Float          { Constant }

         , Identifier     { fg = black.li(15), italic = true}
         , Function       { Identifier }

         , Statement      { fg = black.li(15), bold = true, italic = true }
         , Conditional    { Statement }
         , Repeat         { Statement }
         , Label          { Statement }
         , Operator       { fg = black, bold = true }
         , Keyword        { Statement }
         , Exception      { Statement, underline = true }

         , PreProc        { fg = black.li(40) }
         , Include        { PreProc }
         , Define         { PreProc }
         , Macro          { PreProc }
         , PreCondit      { PreProc }

         , Type           { fg = black.li(5), bold = true }
         , StorageClass   { fg = black.li(5), bold = true }
         , Structure      { fg = black.li(5), bold = true }
         , Typedef        { fg = black.li(5), bold = true }

         , Special        { fg = black }
         , SpecialChar    { Special }
         , Tag            { Special }
         , Delimiter      { Special }
         , SpecialComment { Special }
         , Debug          { Special }

         , DiagnosticError            { fg = red.de(50) }
         , DiagnosticWarn             { fg = yellow.de(60) }
         , DiagnosticInfo             { fg = blue.de(50) }
         , DiagnosticHint             { fg = purple.de(50) }
         , DiagnosticOk               { fg = green.de(50) }
         , DiagnosticVirtualTextError { fg = DiagnosticError.fg.de(40), italic = true }
         , DiagnosticVirtualTextWarn  { fg = DiagnosticWarn.fg.de(40), italic = true }
         , DiagnosticVirtualTextInfo  { fg = DiagnosticInfo.fg.de(40), italic = true }
         , DiagnosticVirtualTextHint  { fg = DiagnosticHint.fg.de(40), italic = true }
         , DiagnosticVirtualTextOk    { fg = DiagnosticOk.fg.de(40), italic = true }
         , DiagnosticUnderlineError   { fg = black.li(45), undercurl = true, sp = red.de(50) }
         , DiagnosticUnderlineWarn    { fg = black.li(45), undercurl = true, sp = yellow.de(50) }
         , DiagnosticUnderlineInfo    { fg = black.li(45), undercurl = true, sp = blue.de(50) }
         , DiagnosticUnderlineHint    { fg = black.li(45), undercurl = true, sp = purple.de(50) }
         , DiagnosticUnderlineOk      { fg = black.li(45), undercurl = true, sp = green.de(50) }
         , DiagnosticFloatingError    { DiagnosticError }
         , DiagnosticFloatingWarn     { DiagnosticWarn }
         , DiagnosticFloatingInfo     { DiagnosticInfo }
         , DiagnosticFloatingHint     { DiagnosticHint }
         , DiagnosticFloatingOk       { DiagnosticOk }
         , DiagnosticSignError        { fg = black, bold = true }
         , DiagnosticSignWarn         { fg = black, bold = true }
         , DiagnosticSignInfo         { fg = black, bold = true }
         , DiagnosticSignHint         { fg = black, bold = true }
         , DiagnosticSignOk           { fg = black, bold = true }
         , DiagnosticDeprecated       { fg = black.li(40), strikethrough = true }
         , DiagnosticUnnecessary      { fg = black.li(65), strikethrough = true }

         , LspReferenceText            { fg = black.li(30)}
         , LspReferenceRead            { fg = black.li(20)}
         , LspReferenceWrite           { fg = black.li(20)}
         , LspCodeLens                 { fg = black.li(10) }
         , LspCodeLensSeparator        { fg = black }
         , LspSignatureActiveParameter { fg = black }

         , QuickScopePrimary           { fg = white, bg = black }
         , QuickScopeSecondary         { fg = white.da(15), bg = black.li(30) }

         , NvimTreeFolderIcon          { Normal }
         , NvimTreeOpenedFolderIcon    { NvimTreeFolderIcon }
         , NvimTreeClosedFolderIcon    { NvimTreeFolderIcon }
         , NvimTreeFolderArrowClosed   { NvimTreeFolderIcon }
         , NvimTreeFolderArrowOpen     { NvimTreeFolderIcon }
}
end)

return theme

-- local dark = require("lush_theme.nocolor-dark")
-- local theme = lush.extends({dark}).with(function()
--   return { Normal { dark.Normal, reverse = true }
--          , }
-- end)
-- return theme
