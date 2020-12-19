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
hi SpecialComment guifg=#54708c guibg=NONE gui=NONE cterm=NONE
hi Comment guifg=#54708c guibg=NONE gui=NONE cterm=NONE
hi Constant guifg=#00d5ff guibg=NONE gui=NONE cterm=NONE
hi Operator guifg=#00d5ff guibg=NONE gui=NONE cterm=NONE
hi String guifg=#b0ec55 guibg=NONE gui=NONE cterm=NONE
hi Character guifg=#b0ec55 guibg=NONE gui=NONE cterm=NONE
hi PreCondit guifg=#ffda6b guibg=NONE gui=NONE cterm=NONE
hi Type guifg=#ffda6b guibg=NONE gui=NONE cterm=NONE
hi StorageClass guifg=#ffda6b guibg=NONE gui=NONE cterm=NONE
hi Structure guifg=#ffda6b guibg=NONE gui=NONE cterm=NONE
hi Typedef guifg=#ffda6b guibg=NONE gui=NONE cterm=NONE
hi PreProc guifg=#ffda6b guibg=NONE gui=NONE cterm=NONE
hi Number guifg=#8095ff guibg=NONE gui=NONE cterm=NONE
hi Float guifg=#8095ff guibg=NONE gui=NONE cterm=NONE
hi Keyword guifg=#d84b60 guibg=NONE gui=NONE cterm=NONE
hi Error guifg=#d84b60 guibg=NONE gui=NONE cterm=NONE
hi Boolean guifg=#d84b60 guibg=NONE gui=NONE cterm=NONE
hi Identifier guifg=#8095ff guibg=NONE gui=NONE cterm=NONE
hi Statement guifg=#8095ff guibg=NONE gui=NONE cterm=NONE
hi Conditional guifg=#ffa857 guibg=NONE gui=NONE cterm=NONE
hi Todo guifg=#8095ff guibg=NONE gui=NONE cterm=NONE
hi Repeat guifg=#8095ff guibg=NONE gui=NONE cterm=NONE
hi Label guifg=#8095ff guibg=NONE gui=NONE cterm=NONE
hi Define guifg=#8095ff guibg=NONE gui=NONE cterm=NONE
hi Macro guifg=#8095ff guibg=NONE gui=NONE cterm=NONE
hi Exception guifg=#8095ff guibg=NONE gui=NONE cterm=NONE
hi Include guifg=#4d7cff guibg=NONE gui=NONE cterm=NONE
hi Special guifg=#c690e9 guibg=NONE gui=NONE cterm=NONE
hi Function guifg=#c690e9 guibg=NONE gui=NONE cterm=NONE
hi SpecialChar guifg=NONE guibg=NONE gui=NONE cterm=NONE
hi Tag guifg=NONE guibg=NONE gui=NONE cterm=NONE
hi Delimiter guifg=NONE guibg=NONE gui=NONE cterm=NONE
hi Debug guifg=NONE guibg=NONE gui=NONE cterm=NONE
hi Underlined guifg=NONE guibg=NONE gui=underline cterm=underline
hi Ignore guifg=NONE guibg=NONE gui=NONE cterm=NONE
hi Normal guifg=#eaf2fa guibg=#0a2642 gui=NONE cterm=NONE
hi Cursor guifg=#06182d guibg=#4d7cff gui=NONE cterm=NONE
hi Visual guifg=#06182d guibg=#eaf2fa gui=NONE cterm=NONE
hi VisualNOS guifg=NONE guibg=#eaf2fa gui=NONE cterm=NONE
hi MatchParen guifg=#4d7cff guibg=NONE gui=underline cterm=NONE
hi Search guifg=#c690e9 guibg=#8095ff gui=NONE cterm=NONE
hi IncSearch guifg=#ffda6b guibg=#54708c gui=NONE cterm=NONE
hi LineNr guifg=#54708c guibg=NONE gui=NONE cterm=NONE
hi StatusLine guifg=#eaf2fa guibg=#0a2642 gui=NONE cterm=NONE
hi StatusLineNC guifg=#54708c guibg=NONE gui=NONE cterm=NONE
hi WildMenu guifg=#06182d guibg=#4d7cff gui=NONE cterm=NONE
hi Pmenu guifg=NONE guibg=#c690e9 gui=NONE cterm=NONE
hi PmenuSbar guifg=NONE guibg=#deeaf7 gui=NONE cterm=NONE
hi PmenuThumb guifg=NONE guibg=#eaf2fa gui=NONE cterm=NONE
hi PmenuSel guifg=#06182d guibg=#4d7cff gui=NONE cterm=NONE
hi ColorColumn guifg=NONE guibg=#d2e2f4 gui=NONE cterm=NONE
hi CursorColumn guifg=NONE guibg=#d2e2f4 gui=NONE cterm=NONE
hi VertSplit guifg=#06182d guibg=NONE gui=NONE cterm=NONE
hi TabLine guifg=#54708c guibg=NONE gui=NONE cterm=NONE
hi TabLineSel guifg=#eaf2fa guibg=NONE gui=NONE cterm=NONE
hi TabLineFill guifg=NONE guibg=NONE gui=NONE cterm=NONE
hi SpecialKey guifg=#deeaf7 guibg=NONE gui=NONE cterm=NONE
hi NonText guifg=#deeaf7 guibg=NONE gui=NONE cterm=NONE
hi Title guifg=#b0ec55 guibg=NONE gui=NONE cterm=NONE
hi SpellBad guifg=#d84b60 guibg=NONE gui=NONE cterm=NONE
hi WarningMsg guifg=#ffda6b guibg=NONE gui=NONE cterm=NONE
hi ErrorMsg guifg=#d84b60 guibg=NONE gui=NONE cterm=NONE
hi Directory guifg=#4d7cff guibg=NONE gui=NONE cterm=NONE
hi Question guifg=#8095ff guibg=NONE gui=NONE cterm=NONE
hi SpellRare guifg=#8095ff guibg=NONE gui=NONE cterm=NONE
hi SpellLocal guifg=#8095ff guibg=NONE gui=NONE cterm=NONE
hi SpellCap guifg=#8095ff guibg=NONE gui=NONE cterm=NONE
hi Conceal guifg=NONE guibg=NONE gui=NONE cterm=NONE
hi CustorIM guifg=NONE guibg=NONE gui=NONE cterm=NONE
hi Folded guifg=#54708c guibg=#d2e2f4 gui=NONE cterm=NONE
hi Foldcolumn guifg=NONE guibg=NONE gui=NONE cterm=NONE
hi SignColumn guifg=NONE guibg=NONE gui=NONE cterm=NONE
hi CursorLine guifg=NONE guibg=#d2e2f4 gui=NONE cterm=NONE
hi CursorLineNr guifg=NONE guibg=NONE gui=NONE cterm=NONE
hi ModeMsg guifg=NONE guibg=NONE gui=NONE cterm=NONE
hi DiffAdd guifg=#06182d guibg=#b0ec55 gui=NONE cterm=NONE
hi DiffDelete guifg=#06182d guibg=#d84b60 gui=NONE cterm=NONE
hi DiffChange guifg=#06182d guibg=#ffda6b gui=NONE cterm=NONE
hi DiffText guifg=#ffda6b guibg=#06182d gui=NONE cterm=NONE

"" BASH
hi shSet guifg=#ffa857 guibg=NONE gui=NONE cterm=NONE
hi shSetOption guifg=#00d5ff guibg=NONE gui=NONE cterm=NONE
hi shStatement guifg=#c690e9 guibg=NONE gui=NONE cterm=NONE
hi shFunctionKey guifg=#8095ff guibg=NONE gui=NONE cterm=NONE
