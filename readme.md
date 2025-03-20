# linear-jumps.nvim

A Neovim plugin that modifies the default behavior of `Ctrl+o` and `Ctrl+i` to make jumps non-circular.
Instead of wrapping around, the plugin stops at the first or last item in the jump history.

## Installation

Using [Lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
  { 'valentemesmo/linear-jumps.nvim' , opts = {} },
```
