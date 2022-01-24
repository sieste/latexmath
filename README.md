## `latexmath.vim`: Vim math input mode

- This is a collection of vim insert-mode mappings that simplifies writing of
  latex math.
- When in insert mode, math mode is toggled on/off with `Alt+M` 
- The following insert-mode shortcuts then become available:
  - `.a` for `\alpha`, `.b` for `\beta` etc
  - `./` for `\frac{}{}` with cursor put into the first brace
  - `.(`, `.[`, `.{` for `\left( \right)`, etc, with cursor placed in between
    parentheses
  - `__` for `_{}` and `^^` for `^{}`
  - `.+` for `\sum_{}^{}`
  - `<TAB>` to jump to next opening or closing brace/bracket/parenthesis
  - ... and a few more, see the <latexmath.vim> script for all shortcuts
- The script is easy to modify and expand to taylor it to your needs.

### Usage: 

`latexmath.vim` is just a stand-alone vimscript (i.e. not plugin-managed), so
just `:source` it whenever you need it:

    :source latexmath.vim

To have it always available, put the above line into your config file
(`.vimrc`, `.config/nvim/init.vim`, ...).



