" Vim color file
"
" This file is part of the vimterial_dark colorscheme by
" Lorenzo Ruiz <lars.bs@hotmail.com>. See full
" LICENSE for details.
"
" Maintainer: Lorenzo Ruiz <lars.bs@hotmail.com>
" URL: https://github.com/larsbs/vimterial_dark


" NERDTree Highlighting "{{{
" =====================
" Highlighting for directory nodes and file nodes
Hi NERDTreeDirSlash        g:foreground_alt
hi NERDTreeDirSlash        gui=none ctermbg=none

Hi NERDTreeDir             g:foreground_alt
hi NERDTreeDir             gui=bold ctermbg=none

hi NERDTreeUp              guifg=#ff0000               gui=none ctermbg=none

Hi NERDTreeFile            g:light_grey
hi NERDTreeFile            gui=none ctermbg=none

Hi NERDTreeCWD             g:cyan
hi NERDTreeCWD             gui=none ctermbg=none

Hi NERDTreeOpenable        g:cyan
hi NERDTreeOpenable        gui=none ctermbg=none

Hi NERDTreeClosable        g:cyan
hi NERDTreeClosable        gui=none ctermbg=none
" }}}
