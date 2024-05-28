# No Color Scheme for NeoVim

Made with [lush](http://git.io/lush.nvim).

## Install

With [lazy](https://github.com/folke/lazy.nvim):

```lua
{ "augustunderground/nocolor.nvim" }
```

Or any other plugin manager.

## Usage

No need to `setup()`, just

```lua
vim.cmd.colorscheme("nocolor")
```

or

```vim
colorscheme nocolor
```

Works well with [lualine](https://github.com/nvim-lualine/lualine.nvim) and
[barbar](https://github.com/romgrk/barbar.nvim).

## Lightswitch

Switch between light and dark mode on the fly with the `:Light` and `:Dark`
commands.
