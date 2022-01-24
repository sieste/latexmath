## `latexmath.vim`: Vim math input mode

- This is a collection of vim insert-mode mappings that simplifies writing of
  latex math.
- When in insert mode, math mode is toggled on/off with `Alt+M` 
- The following insert-mode shortcuts then become available:
  - `.a` for `\alpha`, `.b` for `\beta` etc
  - `.\` for `\frac{}{}` with cursor put into the first brace
  - `.(`, `.[`, `.{` for `\left( \right)`, etc, with cursor placed in between
    parentheses
  - `__` for `_{}` and `^^` for `^{}`
  - `.+` for `\sum_{}^{}`
  - `<TAB>` to jump to next opening or closing brace/bracket/parenthesis
  - ... and a few more, see the <latexmath.vim> script for all shortcuts
- it's easy to modify and modify to taylor to your needs
- `latexmath.vim` is just a stand-alone vimscript (i.e. not plugin-managed)
  that can be sourced when needed, or put into the vim config.


