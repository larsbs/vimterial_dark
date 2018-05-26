" Vim color file
"
" This file is part of the vimterial_dark colorscheme by
" Lorenzo Ruiz <lars.bs@hotmail.com>. See full
" LICENSE for details.
"
" Maintainer: Lorenzo Ruiz <lars.bs@hotmail.com>
" URL: https://github.com/larsbs/vimterial_dark


" HTML Highlighting "{{{
" =================
Hi htmlTag                   g:accent_teal       g:ignore
Hi htmlTagName               g:light_red         g:ignore

hi link htmlEndTag           htmlTag

hi link htmlArg              Normal
Hi htmlArg                   g:soft_orange       g:ignore
hi htmlArg                   gui=italic

hi link htmlTagN             htmlTagName
hi link htmlSpecialTagName   htmlTagName
" }}}
