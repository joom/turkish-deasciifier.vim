turkish-deasciifier.vim
=======================

This plugin is a tool to pipe your selection into the [Python code written by emres (Emre Sevinç)](https://github.com/emres/turkish-deasciifier/), which is based on Deniz Yüret's turkish-mode [emres/turkish-mode](https://github.com/emres/turkish-mode).

It contains two functions, one to deasciify a selection, and the other to asciify it.

You can create key mappings for it like this in your .vimrc file:

```vim
vmap <Space>tr :<c-u>call Turkish_Deasciify()<CR>
vmap <Space>rt :<c-u>call Turkish_Asciify()<CR>
```

## Requirements

Note that you need to install [emres/turkish-deasciifier](https://github.com/emres/turkish-deasciifier/) to use this plugin. If you don't specify a path for the [executable](https://github.com/emres/turkish-deasciifier/blob/master/turkish-deasciify) file, the plugin will assume that it is included in the environment. However, if that is not the case, you can specify a path for it in your .vimrc file:

```vim
let g:turkish_deasciifier_path = '~/Library/turkish-deasciifier/turkish-deasciify'
```

## Installation

You can install it the way you install any other plugin with Vundle or Pathogen.

## License

MIT
