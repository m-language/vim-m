# vim-m

The vim plugin for the [m](m-language.github.io) programming language,
featuring syntax highlighting.

## Installation (via Pathogen)
```Bash
git clone https://github.com/tkaden4/vim-m ~/.vim/bundle/vim-m
```

## TODO
- Enforce indentation

## Options

Unlike other lisps, `if` is not a special form, but rather an alias of the function `id`. 
If you'd like to have `if` highlighted as a special form (`def`, `symbol`, etc.) then add 
the following to your `.vimrc`.

```vim
let g:m_if_is_special = 1
```

## Screenshot
![Screenshot of vim-m in action](/screenshot.png?raw=true)
