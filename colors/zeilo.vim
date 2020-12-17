" ===============================================================
" Zeilo
" A vim color theme
" URL: TODO
" Author: Charles Victor Conner
" ===============================================================

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name="zeilo"

"" GENERAL
hi SpecialComment guifg=#585f8d guibg=NONE gui=NONE cterm=NONE
hi Comment guifg=#585f8d guibg=NONE gui=NONE cterm=NONE
hi Constant guifg=#24c1ff guibg=NONE gui=NONE cterm=NONE
hi Operator guifg=#24c1ff guibg=NONE gui=NONE cterm=NONE
hi String guifg=#b0ec55 guibg=NONE gui=NONE cterm=NONE
hi Character guifg=#40b57c guibg=NONE gui=NONE cterm=NONE
hi PreCondit guifg=#ffcd42 guibg=NONE gui=NONE cterm=NONE
hi Type guifg=#ffcd42 guibg=NONE gui=NONE cterm=NONE
hi StorageClass guifg=#ffcd42 guibg=NONE gui=NONE cterm=NONE
hi Structure guifg=#ffcd42 guibg=NONE gui=NONE cterm=NONE
hi Typedef guifg=#ffcd42 guibg=NONE gui=NONE cterm=NONE
hi PreProc guifg=#ffcd42 guibg=NONE gui=NONE cterm=NONE
hi Number guifg=#7847eb guibg=NONE gui=NONE cterm=NONE
hi Float guifg=#7847eb guibg=NONE gui=NONE cterm=NONE
hi Keyword guifg=#d84b60 guibg=NONE gui=NONE cterm=NONE
hi Error guifg=#d84b60 guibg=NONE gui=NONE cterm=NONE
hi Boolean guifg=#d84b60 guibg=NONE gui=NONE cterm=NONE
hi Identifier guifg=#d84b60 guibg=NONE gui=NONE cterm=NONE
hi Statement guifg=#6975c3 guibg=NONE gui=NONE cterm=NONE
hi Conditional guifg=#dc7756 guibg=NONE gui=NONE cterm=NONE
hi Todo guifg=#6975c3 guibg=NONE gui=NONE cterm=NONE
hi Repeat guifg=#6975c3 guibg=NONE gui=NONE cterm=NONE
hi Label guifg=#6975c3 guibg=NONE gui=NONE cterm=NONE
hi Define guifg=#6975c3 guibg=NONE gui=NONE cterm=NONE
hi Macro guifg=#6975c3 guibg=NONE gui=NONE cterm=NONE
hi Exception guifg=#6975c3 guibg=NONE gui=NONE cterm=NONE
hi Include guifg=#4d7cff guibg=NONE gui=NONE cterm=NONE
hi Special guifg=#c690e9 guibg=NONE gui=NONE cterm=NONE
hi Function guifg=#c690e9 guibg=NONE gui=NONE cterm=NONE
hi SpecialChar guifg=NONE guibg=NONE gui=NONE cterm=NONE
hi Tag guifg=NONE guibg=NONE gui=NONE cterm=NONE
hi Delimiter guifg=NONE guibg=NONE gui=NONE cterm=NONE
hi Debug guifg=NONE guibg=NONE gui=NONE cterm=NONE
hi Underlined guifg=NONE guibg=NONE gui=underline cterm=underline
hi Ignore guifg=NONE guibg=NONE gui=NONE cterm=NONE
hi Normal guifg=#ebedfa guibg=#1b1e37 gui=NONE cterm=NONE
hi Cursor guifg=#1b1e37 guibg=#4d7cff gui=NONE cterm=NONE
hi Visual guifg=#171a30 guibg=#ebedfa gui=NONE cterm=NONE
hi VisualNOS guifg=NONE guibg=#ebedfa gui=NONE cterm=NONE
hi MatchParen guifg=#4d7cff guibg=NONE gui=underline cterm=NONE
hi Search guifg=#c690e9 guibg=#6975c3 gui=NONE cterm=NONE
hi IncSearch guifg=#ffcd42 guibg=#585f8d gui=NONE cterm=NONE
hi LineNr guifg=#a3a9d7 guibg=NONE gui=NONE cterm=NONE
hi StatusLine guifg=#ebedfa guibg=#171a30 gui=NONE cterm=NONE
hi StatusLineNC guifg=#585f8d guibg=NONE gui=NONE cterm=NONE
hi WildMenu guifg=#1b1e37 guibg=#4d7cff gui=NONE cterm=NONE
hi Pmenu guifg=NONE guibg=#c690e9 gui=NONE cterm=NONE
hi PmenuSbar guifg=NONE guibg=#d8dbf3 gui=NONE cterm=NONE
hi PmenuThumb guifg=NONE guibg=#ebedfa gui=NONE cterm=NONE
hi PmenuSel guifg=#1b1e37 guibg=#4d7cff gui=NONE cterm=NONE
hi ColorColumn guifg=NONE guibg=#abb1de gui=NONE cterm=NONE
hi CursorColumn guifg=NONE guibg=#abb1de gui=NONE cterm=NONE
hi VertSplit guifg=#1b1e37 guibg=NONE gui=NONE cterm=NONE
hi TabLine guifg=#585f8d guibg=NONE gui=NONE cterm=NONE
hi TabLineSel guifg=#ebedfa guibg=NONE gui=NONE cterm=NONE
hi TabLineFill guifg=NONE guibg=NONE gui=NONE cterm=NONE
hi SpecialKey guifg=#d8dbf3 guibg=NONE gui=NONE cterm=NONE
hi NonText guifg=#d8dbf3 guibg=NONE gui=NONE cterm=NONE
hi Title guifg=#40b57c guibg=NONE gui=NONE cterm=NONE
hi SpellBad guifg=#d84b60 guibg=NONE gui=NONE cterm=NONE
hi WarningMsg guifg=#ffcd42 guibg=NONE gui=NONE cterm=NONE
hi ErrorMsg guifg=#d84b60 guibg=NONE gui=NONE cterm=NONE
hi Directory guifg=#4d7cff guibg=NONE gui=NONE cterm=NONE
hi Question guifg=#6975c3 guibg=NONE gui=NONE cterm=NONE
hi SpellRare guifg=#7847eb guibg=NONE gui=NONE cterm=NONE
hi SpellLocal guifg=#7847eb guibg=NONE gui=NONE cterm=NONE
hi SpellCap guifg=#7847eb guibg=NONE gui=NONE cterm=NONE
hi Conceal guifg=NONE guibg=NONE gui=NONE cterm=NONE
hi CustorIM guifg=NONE guibg=NONE gui=NONE cterm=NONE
hi Folded guifg=#585f8d guibg=#abb1de gui=NONE cterm=NONE
hi Foldcolumn guifg=NONE guibg=NONE gui=NONE cterm=NONE
hi SignColumn guifg=NONE guibg=NONE gui=NONE cterm=NONE
hi CursorLine guifg=NONE guibg=#abb1de gui=NONE cterm=NONE
hi CursorLineNr guifg=NONE guibg=NONE gui=NONE cterm=NONE
hi ModeMsg guifg=NONE guibg=NONE gui=NONE cterm=NONE
hi DiffAdd guifg=#1b1e37 guibg=#40b57c gui=NONE cterm=NONE
hi DiffDelete guifg=#1b1e37 guibg=#d84b60 gui=NONE cterm=NONE
hi DiffChange guifg=#1b1e37 guibg=#ffcd42 gui=NONE cterm=NONE
hi DiffText guifg=#ffcd42 guibg=#1b1e37 gui=NONE cterm=NONE

"" BASH
hi shSet guifg=#dc7756 guibg=NONE gui=NONE cterm=NONE
hi shSetOption guifg=#24c1ff guibg=NONE gui=NONE cterm=NONE
hi shStatement guifg=#c690e9 guibg=NONE gui=NONE cterm=NONE
hi shFunctionKey guifg=#6975c3 guibg=NONE gui=NONE cterm=NONE
