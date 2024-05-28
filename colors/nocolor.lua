local lush = require("lush")

vim.g.colors_name                    = "nocolor"
vim.opt.background                   = "dark"
package.loaded["lush_theme.nocolor"] = nil

lush(require("lush_theme.nocolor-dark"))
