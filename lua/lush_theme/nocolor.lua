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

local black   = hsl(0,0,0).de(100)
local white   = hsl(255,255,255).de(100)

local yellow  = hsl(40,100,52)
local red     = hsl(344,100,28)
local green   = hsl(154,85,36)
local purple  = hsl(295,95,40)
local blue    = hsl(207,100,42)
local cyan    = hsl(176,69,41)

---@diagnostic disable: undefined-global
local theme = lush( function(injected_functions)
  local sym = injected_functions.sym
  return { ColorColumn    { bg = black.li(20) }
         , Conceal        { bg = black.li(4), fg = white.da(15) }
         , Cursor         { bg = white.da(50), fg = black.li(0) }
         , CurSearch      { bg = white.da(0), fg = black.li(0), bold = true }
         , lCursor        { Cursor, reverse = true }
         , CursorIM       { Cursor }
         , CursorColumn   { bg = black.li(15) }
         , CursorLine     { bg = black.li(15) }
         , Directory      { bg = black.li(4), fg = white.da(15), bold = true }
         , DiffAdd        { bg = black.li(4), fg = white.da(10) }
         , DiffChange     { bg = black.li(4), fg = white.da(20) }
         , DiffDelete     { bg = black.li(4), fg = white.da(40) }
         , DiffText       { bg = black.li(4), fg = white.da(40) }
         , EndOfBuffer    { bg = black.li(4), fg = black.li(4) }
         , TermCursor     { Cursor }
         , TermCursorNC   { TermCursor }
         , ErrorMsg       { fg = white.da(5), bg = red.darken(40) }
         , VertSplit      { bg = black.li(20), fg = black.li(20) }
         , Folded         { bg = black.li(4), fg = white.da(20) }
         , FoldColumn     { bg = black.li(4), fg = white.da(10) }
         , SignColumn     { bg = black.li(4), fg = white.da(15) }
         , IncSearch      { bg = white.da(20), fg = black.li(20) }
         , Substitute     { }
         , LineNr         { bg = black.li(4), fg = white.da(15), bold = false }
         , LineNrAbove    { LineNr }
         , LineNrBelow    { LineNr }
         , CursorLineNr   { bg = black.li(4), fg = white.da(15), bold = true }
         , CursorLineFold { }
         , CursorLineSign { }
         , MatchParen     { bg = black.li(20), fg = white, bold = true }
         , MsgArea        { }
         , MsgSeparator   { }
         , MoreMsg        { bg = black.li(4), fg = white.da(10), bold = true }
         , ModeMsg        { MoreMsg }
         , NonText        { bg = black.li(4), fg = black.li(4) }
         , Normal         { bg = black.li(4), fg = white.da(15) }
         , NormalFloat    { bg = black.li(10) }
         , FloatBorder    { bg = black.li(15), fg = white }
         , FloatTitle     { Normal, underline = true }
         , NormalNC       { Normal }
         , Pmenu          { bg = black.li(15), fg = white.da(14) }
         , PmenuSel       { bg = black.li(25), fg = white.da(4) }
         , PmenuKind      { Pmenu }
         , PmenuKindSel   { PmenuSel }
         , PmenuExtra     { Pmenu }
         , PmenuExtraSel  { PmenuSel }
         , PmenuSbar      { Pmenu }
         , PmenuThumb     { Pmenu, reverse = true }
         , Question       { bg = black, fg = white }
         , QuickFixLine   { }
         , Search         { IncSearch }
         , SpecialKey     { bg = black, fg = white }
         , SpellBad       { undercurl = true, sp = red.de(50) }
         , SpellCap       { undercurl = true, sp = green.de(50) }
         , SpellLocal     { undercurl = true, sp = blue.de(50) }
         , SpellRare      { undercurl = true, sp = purple.de(50) }
         -- , StatusLine     { }
         -- , StatusLineNC   { }
         , TabLine        { }
         , TabLineFill    { bg = black.li(4) }
         , TabLineSel     { bg = black.li(20), bold = true }
         , Title          { bg = black.li(4), fg = white.da(10) }
         , Visual         { reverse = true }
         , VisualNOS      { reverse = true }
         , WarningMsg     { bg = yellow.darken(60), fg = white.da(5) }
         , Whitespace     { NonText }
         , Winseparator   { VertSplit }
         , WildMenu       { PmenuSel }
         , WinBar         { Pmenu }
         , WinBarNC       { Pmenu }

         , Comment        { fg = white.da(60), italic = true }

         , Constant       { fg = white.da(40) }
         , String         { Constant }
         , Character      { Constant }
         , Number         { Constant }
         , Boolean        { Constant }
         , Float          { Constant }

         , Identifier     { fg = white.da(10), italic = true}
         , Function       { Identifier }

         , Statement      { fg = white.da(15), bold = true }
         , Conditional    { Statement }
         , Repeat         { Statement }
         , Label          { Statement }
         , Operator       { fg = white, bold = true }
         , Keyword        { Statement }
         , Exception      { Statement, underline = true }

         , PreProc        { fg = white.da(40), italic = true }
         , Include        { PreProc }
         , Define         { PreProc }
         , Macro          { PreProc }
         , PreCondit      { PreProc }

         , Type           { fg = white.da(5), bold = true, italic = true }
         , StorageClass   { fg = white.da(5), bold = true, italic = true }
         , Structure      { fg = white.da(5), bold = true, italic = false }
         , Typedef        { fg = white.da(5), bold = true, italic = true }

         , Special        { fg = white.da(50) }
         , SpecialChar    { Special }
         , Tag            { Special }
         , Delimiter      { Special }
         , SpecialComment { Special }
         , Debug          { Special }

         , Underlined     { underline = true }
         , Ignore         { fg = black.li(30) }
         , Error          { ErrorMsg }
         , Todo           { fg = white.da(4), undercurl = true, sp = yellow.de(50) }

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
         , DiagnosticUnderlineError   { fg = white.da(45), undercurl = true, sp = red.de(50) }
         , DiagnosticUnderlineWarn    { fg = white.da(45), undercurl = true, sp = yellow.de(50) }
         , DiagnosticUnderlineInfo    { fg = white.da(45), undercurl = true, sp = blue.de(50) }
         , DiagnosticUnderlineHint    { fg = white.da(45), undercurl = true, sp = purple.de(50) }
         , DiagnosticUnderlineOk      { fg = white.da(45), undercurl = true, sp = green.de(50) }
         , DiagnosticFloatingError    { DiagnosticError }
         , DiagnosticFloatingWarn     { DiagnosticWarn }
         , DiagnosticFloatingInfo     { DiagnosticInfo }
         , DiagnosticFloatingHint     { DiagnosticHint }
         , DiagnosticFloatingOk       { DiagnosticOk }
         , DiagnosticSignError        { fg = white }
         , DiagnosticSignWarn         { fg = white }
         , DiagnosticSignInfo         { fg = white }
         , DiagnosticSignHint         { fg = white }
         , DiagnosticSignOk           { fg = white }
         , DiagnosticDeprecated       { fg = white.da(40), strikethrough = true }
         , DiagnosticUnnecessary      { fg = white.da(40), strikethrough = true }

         -- , LspReferenceText            { }
         -- , LspReferenceRead            { }
         -- , LspReferenceWrite           { }
         -- , LspCodeLens                 { }
         -- , LspCodeLensSeparator        { }
         -- , LspSignatureActiveParameter { }
}
end)

-- Return our parsed theme for extension or use elsewhere.
return theme
