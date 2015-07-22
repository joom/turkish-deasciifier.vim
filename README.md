turkish-deasciifier.vim
=======================

This plugin is a tool to pipe your selection into a Turkish deasciifier, which is based on Deniz Yüret's [turkish-mode](https://github.com/emres/turkish-mode).

It contains two functions, one to deasciify a selection, and the other to asciify it.

You can create key mappings for it like this in your .vimrc file:

```vim
vmap <Space>tr :<c-u>call Turkish_Deasciify()<CR>
vmap <Space>rt :<c-u>call Turkish_Asciify()<CR>
```

## Demo

![Demo](http://i.imgur.com/BChFSRX.gif)

## Requirements

Note that you need to install an executable Turkish deasciifier program. There are several ports of it in different languages.

**1)** [f/deasciifier](https://github.com/f/deasciifier/) is the easier version to install if you have `node` and `npm` installed. This command would install the deasciifier:

```bash
npm install deasciifier -g
```

Then you have to include this line in your .vimrc file:

```vim
let g:turkish_deasciifier_path = 'deasciify'
```

**2)** [joom/turkish-deasciifier.hs](https://github.com/joom/turkish-deasciifier.hs/) is another easy version to install if you have Haskell installed (`cabal` and `ghc`). This command would install the deasciifier:

```bash
cabal install turkish-deasciifier
```

Then you have to include this line in your .vimrc file:

```vim
let g:turkish_deasciifier_path = 'turkish-deasciifier'
```

**3)** [emres/turkish-deasciifier](https://github.com/emres/turkish-deasciifier/) is another deasciifier version that you can use if you have Python installed. Running this command would be a easy way to do so:

```bash
cd ~/ && mkdir -p Library && cd Library && git clone https://github.com/emres/turkish-deasciifier.git
```

If you don't specify a path for the [executable](https://github.com/emres/turkish-deasciifier/blob/master/turkish-deasciify) file, the plugin will assume that it is included in the environment. However, if that is not the case (if you installed [emres/turkish-deasciifier](https://github.com/emres/turkish-deasciifier/) with the command above, it is not), you can specify a path for it in your .vimrc file:

```vim
let g:turkish_deasciifier_path = '~/Library/turkish-deasciifier/turkish-deasciify'
```


## Installation

You can install it the way you install any other plugin with Vundle or Pathogen.

## License

MIT
