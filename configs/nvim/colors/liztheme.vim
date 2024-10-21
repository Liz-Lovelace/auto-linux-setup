" Set the background preference
set background=dark
hi clear

" If syntax highlighting is enabled, reset it
if exists("syntax_on")
  syntax reset
endif

" Set the name of your color scheme
let g:colors_name = "liztheme"

" Define basic colors
hi Normal guifg=#ffffff guibg=#0e0c0b
hi Cursor guifg=#0e0c0b guibg=#ffffff

" General Syntax coloring
hi Comment guifg=#b0b0b0 ctermfg=15
hi Constant guifg=#00a2ff ctermfg=3
hi String guifg=#8bec55 ctermfg=2
hi Identifier guifg=#ffffff ctermfg=15
hi Function guifg=#ff9c00 ctermfg=3
hi Statement guifg=#ffffff ctermfg=15
hi PreProc guifg=#0bf8ee ctermfg=6
hi Type guifg=#ff00ce ctermfg=5
hi Special guifg=#ffffff ctermfg=15
hi Underlined guifg=#00a2ff ctermfg=4
hi Todo guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE

" HTML
hi htmlTag guifg=#ffffff ctermfg=15
hi htmlEndTag guifg=#ffffff ctermfg=15
hi htmlArg guifg=#ffffff ctermfg=15

" JS
hi jsArrowFunction guifg=#ffffff ctermfg=15

" UI Elements
hi Visual guibg=#4e4c4b ctermfg=NONE ctermbg=8
hi Title guifg=#ff00ce ctermfg=5
hi LineNr guifg=#606060 guibg=#0e0c0b
hi CursorLine guibg=#333333
hi Search guibg=#ff9c00 guifg=#000000 ctermfg=0 ctermbg=11
hi MatchParen guibg=#2d2b2a guifg=NONE ctermfg=NONE ctermbg=8
hi StatusLine guifg=#000000 guibg=#ff9c00 ctermfg=0 ctermbg=3
hi StatusLineNC guifg=#ffffff guibg=#555555
hi VertSplit guifg=#ffffff guibg=#0e0c0b
hi Pmenu guifg=#ffffff guibg=#333333
hi PmenuSel guibg=#00a2ff guifg=#ffffff ctermfg=15 ctermbg=4
hi PmenuSbar guibg=#555555
hi PmenuThumb guifg=#ffffff guibg=#0bf8ee

" Enable true color support if your terminal supports it
set termguicolors

