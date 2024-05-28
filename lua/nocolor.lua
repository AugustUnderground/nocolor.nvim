local lush = require("lush")

local function set_bg(background)
  if (background ~= "dark") and (background ~= "light") then
    print("nocolor: Cannot set background to " .. background)
  else
    vim.cmd("doautocmd ColorSchemePre")
    vim.opt.background = background
    lush(require("lush_theme.nocolor-" .. background))
    vim.cmd("doautocmd ColorScheme")
  end
end

local function switch()
  if vim.opt.background == "dark" then
    set_bg("light")
  else
    set_bg("dark")
  end
end

return { bg = set_bg }
