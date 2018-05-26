" Vim color file
"
" This file is part of the vimterial_dark colorscheme by
" Lorenzo Ruiz <lars.bs@hotmail.com>. See full
" LICENSE for details.
"
" Maintainer: Lorenzo Ruiz <lars.bs@hotmail.com>
" URL: https://github.com/larsbs/vimterial_dark


" JavaScript Highlighting "{{{
" =======================
" Statement Keywords
Hi javaScriptMessage                      g:accent_teal       g:ignore
hi link javaScriptNull                    Constant
hi link javaScriptEventListenerKeywords   javaScriptMessage
Hi javaScriptGlobalObjects                g:soft_orange       g:ignore
" Function and arguments highlighting
hi link javaScriptFuncKeyword             Identifier
hi link javaScriptFuncDef                 Function
hi link javaScriptFuncExp                 javaScriptFuncDef
hi link javaScriptFunctionKey             javaScriptFuncDef
" Braces, Parens, symbols, colons
hi link javaScriptBraces                  Normal
hi link javaScriptParens                  Normal
hi link javaScriptOpSymbols               Operator
hi link javaScriptEndColons               Normal
hi link javaScriptLogicSymbols            Operator
" }}}
