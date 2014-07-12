" turkish-deasciifier.vim
" Author: Cumhur Korkut <http://joom.im/>

if exists("g:loaded_turkish_deasciifier")
  finish
endif
let g:loaded_turkish_deasciifier = 1

if exists("g:turkish_deasciifier_path")
  let g:turkish_deasciifier_path = 'turkish-deasciify'
endif

function! Turkish_Deasciify()
    normal! gv"xy
    let @x = substitute(@x, '"', '\\"', 'ge')
    let @x = system('echo "' . @x . '" | ' . g:turkish_deasciifier_path)
    let @x = join(split(@x, "\n"), "\n")
    normal! gv"xp
endfunction

function! Turkish_Asciify()
    let s:turkish_ascii = [['ğ','g'],['Ğ','G'],['ç','c'],['Ç','C'],['ş','s'],['Ş','S'],['ü','u'],['Ü','U'],['ö','o'],['Ö','O'],['ı','i'],['İ','I'],['â','a'],['Â','A'],['û','u'],['Û','U'],['î','i'],['Î','I']]
    for pair in s:turkish_ascii
      execute "'<,'>s/" . pair[0] . "/" . pair[1]. "/ge"
    endfor
endfunction
