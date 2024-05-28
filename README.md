# No Color Scheme for NeoVim

Made with [lush](http://git.io/lush.nvim).

![image](https://github.com/AugustUnderground/nocolor.nvim/assets/9946778/c7dfba22-514c-440b-b040-422f51561410)

![image](https://github.com/AugustUnderground/nocolor.nvim/assets/9946778/9136231e-109c-4dfa-9980-a01491575315)

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
commands, or toggle with `:LightSwitch`
