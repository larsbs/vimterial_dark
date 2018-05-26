" Vim color file
"
" This file is part of the vimterial_dark colorscheme by
" Lorenzo Ruiz <lars.bs@hotmail.com>. See full
" LICENSE for details.
"
" Maintainer: Lorenzo Ruiz <lars.bs@hotmail.com>
" URL: httpg://github.com/larsbs/vimterial_dark


" CONFIGURATION "{{{
" =============
set background=dark

hi clear

if exists("syntax_on")
    syntax reset
endif

let colors_name="vimterial_dark"
" }}}

" UTILS "{{{
" =============
function! RemoveNewlines(string)
    return substitute(a:string, '\n', '', 'g')
endfunction

" Custom Hi command that accepts colors as variables.
" Usage -> Hi [group] [guifg_color] [guibg_colors]
command! -nargs=+ Hi call CustomHighlighter(<f-args>)
function! CustomHighlighter(name, ...)
    let colour_order = ['guifg', 'guibg']
    let command = 'hi! ' . a:name
    if (len(a:000) < 1) || (len(a:000) > (len(colour_order)))
        echoerr "No colour or too many colours specified"
    else
        for i in range(0, len(a:000) - 1)
            " Extract the color from the variable. If we don't do
            " this, then, the variable is parsed as a string and
            " we get a color asignation error.
            redir => g:color
            silent exe 'echo '.a:000[i]
            redir END
            let g:color = RemoveNewlines(g:color)
            if g:color != 'ignore'
                let command .= ' ' . colour_order[i] . '=' . g:color
            endif
        endfor
        exe command
    endif
endfunc
" }}}

" COLORS "{{{
" =======
execute 'source ' . expand("<sfile>:p:h") . "/colors.vim"
" }}}

" GENERAL "{{{
" =======
Hi Normal               g:lighter_grey_blue  g:darker_grey
Hi Noise                g:accent_teal        g:darker_grey
"Hi ColorColumn          g:testing            g:testing
Hi Cursor               g:darker_grey        g:light_grey_blue
"hi CursorIM
Hi CursorColumn         g:ignore             g:darkest_grey
Hi CursorLine           g:ignore             g:darkest_grey
Hi Directory            g:accent_teal        g:ignore
Hi DiffAdd              g:green              g:darkest_grey
hi DiffAdd              gui=bold
Hi DiffChange           g:orange             g:darkest_grey
hi DiffChange           gui=bold
Hi DiffDelete           g:soft_red           g:darkest_grey
Hi DiffText             g:blue               g:darkest_grey
Hi ErrorMsg             g:darker_grey        g:soft_red
hi ErrorMsg             gui=none
Hi VertSplit            g:darker_grey        g:dark_grey_blue
Hi Folded               g:darker_grey        g:grey_blue
Hi FoldedColumn         g:darker_grey        g:grey_blue
Hi SignColumn           g:dark_grey_blue     g:ignore
Hi IncSearch            g:search             g:darkest_grey
Hi LineNr               g:dark_grey_blue     g:ignore
Hi MatchParen           g:darkest_grey       g:grey_blue
Hi ModeMsg              g:light_grey_blue    g:none
"Hi MoreMsg              g:testing            g:testing
Hi NonText              g:dark_grey_blue     g:ignore
Hi Question             g:light_grey_blue    g:none
hi Question             gui=none
Hi Search               g:darkest_grey       g:search
"Hi SpecialKey           g:testing            g:testing
"Hi StatusLine           g:testing            g:testing
"Hi StatusLineNC         g:testing            g:testing
Hi Title                g:blue               g:ignore
Hi Visual               g:darker_grey        g:light_grey_blue
"Hi VisualNOS            g:testing            g:testing
Hi WarningMsg           g:soft_red           g:ignore
Hi WildMenu             g:testing            g:testing
Hi Menu                 g:testing            g:testing
Hi Scrollbar            g:testing            g:testing
Hi Tooltip              g:testing            g:testing
Hi Pmenu                g:lighter_grey_blue  g:pmenu_bg
Hi PmenuSel             g:pmenu_bg           g:light_grey_blue
Hi PmenuSbar            g:ignore             g:grey_blue
Hi PmenuThumb           g:ignore             g:lighter_grey_blue
" }}}


" Syntax Highlighting Groups (see :he group-name)

" COMMENTS "{{{
" ========
" Any comment
Hi Comment              g:grey_blue          g:ignore
hi comment              gui=italic
" }}}

" CONSTANTS "{{{
" =========
" Any constant
Hi Constant             g:soft_red           g:ignore
" A string constant
Hi String               g:green              g:ignore
" }}}

" IDENTIFIERS "{{{
" ===========
" Any variable name
Hi Identifier           g:violet             g:ignore
hi Identifier           gui=none
" Function name (also: methods for classes)
Hi Function             g:blue               g:ignore
" }}}

" STATEMENTS "{{{
" ==========
" Any statement
Hi Statement            g:violet             g:ignore
hi Statement            gui=none
" if, then, else, endif, switch, etc.
"hi Conditional
" for, do, while, etc.
"hi Repeat
" case, default, etc.
"hi Label
" sizeof, +, *, etc.
Hi Operator             g:limegreen         g:ignore
" Any other keyword
"hi Keyword
" Try, catch, throw
"hi Exception
" }}}

" PREPROCS "{{{
" ========
" Generic preprocessor
Hi PreProc              g:violet             g:ignore
" Preprocessor #include
"hi Include
" Preprocessor #define
"hi Define
" Same as define
"hi Macro
" Preprocessor #if, #else, #endif, etc.
"hi PreCondit
" }}}

" TYPES "{{{
" =====
" int, long, char, etc.
Hi Type                 g:violet             g:ignore
hi Type                 gui=none
" static, register, volatile, etc.
"hi StorageClass
" struct, union, enum, etc.
"hi Structure
" a typedef
"hi Typedef
" }}}

" SPECIALS "{{{
" ========
" Any special symbol (ex: [, ], (, ), etc.)
Hi Special              g:lighter_grey_blue  g:ignore
" Special character in a constant (ex: \n, %s, etc.)
Hi SpecialChar          g:accent_teal        g:ignore
" You can use CTRL-] on this
"hi Tag
" Character that needs attention
"hi Delimiter
" Special things inside a comment
"hi SpecialComment
" Debugging statements
"hi Debug
" }}}

" UNDERLINEDS "{{{
" ===========
" Text that stands out, HTML links
"hi Underlined
" }}}

" IGNORES "{{{
" =======
" Left blank, hidden hl-Ignore
"hi Ignore
" }}}

" ERRORS "{{{
" ======
" Any erroneous construct
"hi Error
" }}}

" TODOS "{{{
" =====
" Anything that needs extra attention; mostly the kewords
" TODO FIXME and XXX
Hi Todo                 g:accent_teal    g:none
hi Todo                 gui=bold
" }}}


" JavaScript Highlighting "{{{
" =======================
execute 'source ' . expand("<sfile>:p:h") . "/syntax/javascript/pangloss-vim-javascript.vim"
" }}}
" HTML Highlighting "{{{
" =================
execute 'source ' . expand("<sfile>:p:h") . "/syntax/html/othree-html5.vim"
" }}}
" XML Highlighting "{{{
" =================
execute 'source ' . expand("<sfile>:p:h") . "/syntax/xml/xml.vim"
" }}}
" Jinja Highlighting "{{{
" ==================
execute 'source ' . expand("<sfile>:p:h") . "/syntax/jinja/glench-vim-jinja2-syntax.vim"
" }}}
" CSS Highlighting "{{{
" ================
execute 'source ' . expand("<sfile>:p:h") . "/syntax/css/juleswang-css.vim"
" }}}
" LESS Highlighting "{{{
" =================
execute 'source ' . expand("<sfile>:p:h") . "/syntax/less/genoma-vim-less.vim"
" }}}
" SH Highlighting "{{{
" ===============
execute 'source ' . expand("<sfile>:p:h") . "/syntax/bash/bash.vim"
" }}}
" NERDTree Highlighting "{{{
" =====================
execute 'source ' . expand("<sfile>:p:h") . "/syntax/nerdtree/nerdtree.vim"
" }}}
