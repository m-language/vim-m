# Vim-M

A Vim plugin for [the M programming language](https://m-language.github.io/).

## Installation (via Pathogen)

```Bash
git clone https://github.com/tkaden4/vim-m ~/.vim/bundle/vim-m
```

## TODO
- Enforce indentation

## Options

Unlike other lisps, `if` is a macro, not a special form. 
If you'd like to have `if` highlighted as a special form (`def`, `symbol`, etc.) then add 
the following to your `.vimrc`.

```vim
let g:m_if_is_special = 1
```

## Screenshot with vim 8 using [GohuFont](http://font.gohu.org/)

![Screenshot of vim-m in action](/screenshot.png?raw=true)
