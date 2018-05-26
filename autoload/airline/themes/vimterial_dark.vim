" Vim airline theme
"
" This file is part of the vimterial_dark colorschema by
" Lorenzo Ruiz <lars.bs@hotmail.com>. See full
" LICENSE for details.
"
" Maintainer: Lorenzo Ruiz <lars.bs@hotmail.com>
" URL: http://github.com/larsbs/vimterial_dark


" Normal mode
let s:N1 = [ '#cdd3de' , '#37474f' , 15 , 55  ]
let s:N2 = [ '#cdd3de' , '#607d8b' , 15 , 98  ]
let s:N3 = [ '#cdd3de' , '#182025' , 15 , 233 ]

" Insert mode
let s:I1 = [ '#263238' , '#82AAFF' , 15 , 33  ]
let s:I2 = [ '#cdd3de' , '#607d8b' , 15 , 39  ]
let s:I3 = [ '#cdd3de' , '#182025' , 15 , 233 ]

" Visual mode
let s:V1 = [ '#263238' , '#c3e88d' , 233 , 202 ]
let s:V2 = [ '#cdd3de' , '#607d8b' , 233 , 214 ]
let s:V3 = [ '#cdd3de' , '#182025' , 15  , 233 ]

" Replace mode
let s:R1 = [ '#263238' , '#F07178' , 15 , 196 ]
let s:R2 = [ '#cdd3de' , '#607d8b' , 15 , 203 ]
let s:R3 = [ '#cdd3de' , '#182025' , 15 , 233 ]

let g:airline#themes#vimterial#palette = {}
let g:airline#themes#vimterial#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#vimterial#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#vimterial#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#vimterial#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)

" Inactive mode
let s:IN1 = [ '#9e9e9e' , '#626262' , 247 , 241 ]
let s:IN2 = [ '#cdd3de' , '#182025' , 15  , 233 ]

let s:IA = [ s:IN1[1] , s:IN2[1] , s:IN1[3] , s:IN2[3] , '' ]
let g:airline#themes#vimterial#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)

" CtrlP
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif

let s:CP1 =  [ '#cdd3de' , '#37474f' , 15 , 55 ]
let s:CP2 =  [ '#cdd3de' , '#607d8b' , 15 , 98 ]
let s:CP3 =  [ '#37474f' , '#cdd3de' , 55 , 15 ]

let g:airline#themes#vimterial#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(s:CP1, s:CP2, s:CP3)

" Tabline
let g:airline#themes#vimterial#palette.tabline = {
      \ 'airline_tab':     [ '#cdd3de' , '#37474f' ,  15 , 55  , '' ],
      \ 'airline_tabsel':  [ '#cdd3de' , '#607d8b' ,  15 , 98  , '' ],
      \ 'airline_tabtype': [ '#cdd3de' , '#607d8b' ,  15 , 98  , '' ],
      \ 'airline_tabfill': [ '#cdd3de' , '#182025' ,  15 , 233 , '' ],
      \ 'airline_tabmod':  [ '#263238' , '#F07178' ,  15 , 33  , '' ]
      \ }
