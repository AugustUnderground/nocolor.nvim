local white     = "#fdfdfd"
local verylight = "#ededed"
local lightgray = "#cdcdcd"
local gray      = "#8d8d8d"
local darkgray  = "#4d4d4d"
local verydark  = "#2d2d2d"
local black     = "#0d0d0d"

local light = { normal   = { a = { bg = darkgray,  fg = white, gui = "bold" }
                           , b = { bg = lightgray, fg = black }
                           , c = { bg = white,     fg = darkgray } }
              , insert   = { a = { bg = gray,      fg = white, gui = "bold" }
                           , b = { bg = lightgray, fg = black }
                           , c = { bg = white,     fg = darkgray } }
              , visual   = { a = { bg = white,     fg = darkgray, gui = "bold" }
                           , b = { bg = lightgray, fg = black }
                           , c = { bg = white,     fg = darkgray } }
              , replace  = { a = { bg = black,     fg = white, gui = "bold" }
                           , b = { bg = lightgray, fg = black }
                           , c = { bg = white,     fg = darkgray } }
              , command  = { a = { bg = white,     fg = black, gui = "bold" }
                           , b = { bg = white,     fg = black }
                           , c = { bg = white,     fg = black } }
              , inactive = { a = { bg = verylight, fg = gray, gui = "bold" }
                           , b = { bg = verylight, fg = gray }
                           , c = { bg = verylight, fg = gray } } }

local dark = { normal   = { a = { bg = lightgray, fg = black, gui = "bold" }
                          , b = { bg = darkgray,  fg = white }
                          , c = { bg = black,     fg = lightgray } }
             , insert   = { a = { bg = gray,      fg = black, gui = "bold" }
                          , b = { bg = darkgray,  fg = white }
                          , c = { bg = black,     fg = lightgray } }
             , visual   = { a = { bg = black,     fg = lightgray, gui = "bold" }
                          , b = { bg = darkgray,  fg = white }
                          , c = { bg = black,     fg = lightgray } }
             , replace  = { a = { bg = white,     fg = black, gui = "bold" }
                          , b = { bg = darkgray,  fg = white }
                          , c = { bg = black,     fg = lightgray } }
             , command  = { a = { bg = black,     fg = white, gui = "bold" }
                          , b = { bg = black,     fg = white }
                          , c = { bg = black,     fg = white } }
             , inactive = { a = { bg = verydark,  fg = gray, gui = "bold" }
                          , b = { bg = verydark,  fg = gray }
                          , c = { bg = verydark,  fg = gray } } }

local function theme()
  local background = vim.opt.background:get()
  if background == "dark" then
    return dark
  else
    return light
  end
end

return theme
