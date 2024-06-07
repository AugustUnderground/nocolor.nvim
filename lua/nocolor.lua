local lush = require("lush")

local function set_bg(background)
  if (background ~= "dark") and (background ~= "light") then
    print("nocolor: Cannot set background to " .. background)
  else
    vim.opt.background = background
    vim.cmd("doautocmd ColorSchemePre")
    lush(require("lush_theme.nocolor-" .. background))
    vim.cmd("doautocmd ColorScheme")
  end
end

local function switch()
  if vim.o.background == "dark" then
    set_bg("light")
  else
    set_bg("dark")
  end
end

return { bg = set_bg, switch = switch }
