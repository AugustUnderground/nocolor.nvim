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

local black   = hsl(0,0,0).desaturate(100)
local white   = hsl(255,255,255).desaturate(100)

local yellow  = "#FFB20F"
local red     = "#8F0024"
local green   = "#0EAD69"
local purple  = "#BD05CB"
local blue    = "#0077DB"
local cyan    = "#20B2AA"

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
         , ErrorMsg       { fg = white.da(5), bg = red }
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
         , MatchParen     { bg = black, fg = white }
         , MsgArea        { }
         , MsgSeparator   { }
         , MoreMsg        { bg = black.li(4), fg = white.da(10), bold = true }
         , ModeMsg        { MoreMsg }
         , NonText        { bg = black.li(4), fg = black.li(4) }
         , Normal         { bg = black.li(4), fg = white.da(15) }
         , NormalFloat    { Normal }
         , FloatBorder    { VertSplit }
         , FloatTitle     { Normal }
         , NormalNC       { Normal }
         , Pmenu          { bg = black.li(15), fg = white.da(14)}
         , PmenuSel       { bg = black.li(25), fg = white.da(4)}
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
         , SpellBad       { undercurl = true, sp = red }
         , SpellCap       { undercurl = true, sp = green }
         , SpellLocal     { undercurl = true, sp = blue }
         , SpellRare      { undercurl = true, sp = purple }
         , StatusLine     { }
         , StatusLineNC   { }
         , TabLine        { }
         , TabLineFill    { bg = black.li(4) }
         , TabLineSel     { bg = black.li(20), bold = true }
         , Title          { bg = black.li(4), fg = white.da(10) }
         , Visual         { reverse = true }
         , VisualNOS      { reverse = true }
         , WarningMsg     { bg = yellow, fg = black.li(5) }
         , Whitespace     { NonText }
         , Winseparator   { VertSplit }
         , WildMenu       { PmenuSel }
         , WinBar         { Pmenu }
         , WinBarNC       { Pmenu }

         , Comment        { fg = white.da(60), italic = true }

         , Constant       { fg = white.da(30) }
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
         , Exception      { Statement }

         , PreProc        { fg = white.da(40) }
         , Include        { PreProc }
         , Define         { PreProc }
         , Macro          { PreProc }
         , PreCondit      { PreProc }

         , Type           { fg = white.da(5) }
         , StorageClass   { Type }
         , Structure      { Type }
         , Typedef        { Type }

         , Special        { fg = white.da(10) }
         , SpecialChar    { Special }
         , Tag            { Special }
         , Delimiter      { Special }
         , SpecialComment { Special }
         , Debug          { Special }

         , Underlined     { underline = true }
         , Ignore         { fg = black.li(30)}
         , Error          { fg = white.da(10), bg = red}
         , Todo           { fg = white.da(4), undercurl = true, sp = yellow }

         , DiagnosticError            { underline = true, sp = red    }
         , DiagnosticWarn             { underline = true, sp = yellow }
         , DiagnosticInfo             { underline = true, sp = purple }
         , DiagnosticHint             { underline = true, sp = blue   }
         , DiagnosticOk               { underline = true, sp = green  }
         , DiagnosticVirtualTextError { DiagnosticError, bold = true }
         , DiagnosticVirtualTextWarn  { DiagnosticWarn, bold = true }
         , DiagnosticVirtualTextInfo  { DiagnosticInfo, bold = true }
         , DiagnosticVirtualTextHint  { DiagnosticHint, bold = true }
         , DiagnosticVirtualTextOk    { DiagnosticOk  , bold = true }
         , DiagnosticUnderlineError   { undercurl = true, sp = red }
         , DiagnosticUnderlineWarn    { undercurl = true, sp = yellow }
         , DiagnosticUnderlineInfo    { undercurl = true, sp = purple }
         , DiagnosticUnderlineHint    { undercurl = true, sp = blue }
         , DiagnosticUnderlineOk      { undercurl = true, sp = green }
         , DiagnosticFloatingError    { DiagnosticError }
         , DiagnosticFloatingWarn     { DiagnosticWarn }
         , DiagnosticFloatingInfo     { DiagnosticInfo }
         , DiagnosticFloatingHint     { DiagnosticHint }
         , DiagnosticFloatingOk       { DiagnosticOk }
         , DiagnosticSignError        { fg = red }
         , DiagnosticSignWarn         { fg = yellow }
         , DiagnosticSignInfo         { fg = purple }
         , DiagnosticSignHint         { fg = blue }
         , DiagnosticSignOk           { fg = green }

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
