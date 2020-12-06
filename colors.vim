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

hi SpecialComment guifg=#000000 guibg=NONE gui=NONE cterm=NONE
hi Comment guifg=#000000 guibg=NONE gui=NONE cterm=NONE
hi Constant guifg=#000000 guibg=NONE gui=NONE cterm=NONE
hi Operator guifg=#000000 guibg=NONE gui=NONE cterm=NONE
hi String guifg=#000000 guibg=NONE gui=NONE cterm=NONE
hi Character guifg=#000000 guibg=NONE gui=NONE cterm=NONE
hi PreCondit guifg=#000000 guibg=NONE gui=NONE cterm=NONE
hi Type guifg=#000000 guibg=NONE gui=NONE cterm=NONE
hi StorageClass guifg=#000000 guibg=NONE gui=NONE cterm=NONE
hi Structure guifg=#000000 guibg=NONE gui=NONE cterm=NONE
hi Typedef guifg=#000000 guibg=NONE gui=NONE cterm=NONE
hi PreProc guifg=#000000 guibg=NONE gui=NONE cterm=NONE
hi Number guifg=#000000 guibg=NONE gui=NONE cterm=NONE
hi Float guifg=#000000 guibg=NONE gui=NONE cterm=NONE
hi Keyword guifg=#000000 guibg=NONE gui=NONE cterm=NONE
hi Error guifg=#000000 guibg=NONE gui=NONE cterm=NONE
hi Boolean guifg=#000000 guibg=NONE gui=NONE cterm=NONE
hi Identifier guifg=#000000 guibg=NONE gui=NONE cterm=NONE
hi Statement guifg=#000000 guibg=NONE gui=NONE cterm=NONE
hi Conditional guifg=#000000 guibg=NONE gui=NONE cterm=NONE
hi Todo guifg=#000000 guibg=NONE gui=NONE cterm=NONE
hi Repeat guifg=#000000 guibg=NONE gui=NONE cterm=NONE
hi Label guifg=#000000 guibg=NONE gui=NONE cterm=NONE
hi Define guifg=#000000 guibg=NONE gui=NONE cterm=NONE
hi Macro guifg=#000000 guibg=NONE gui=NONE cterm=NONE
hi Exception guifg=#000000 guibg=NONE gui=NONE cterm=NONE
hi Include guifg=#000000 guibg=NONE gui=NONE cterm=NONE
hi Special guifg=#000000 guibg=NONE gui=NONE cterm=NONE
hi Function guifg=#000000 guibg=NONE gui=NONE cterm=NONE
hi SpecialChar guifg=NONE guibg=NONE gui=NONE cterm=NONE
hi Tag guifg=NONE guibg=NONE gui=NONE cterm=NONE
hi Delimiter guifg=NONE guibg=NONE gui=NONE cterm=NONE
hi Debug guifg=NONE guibg=NONE gui=NONE cterm=NONE
hi Underlined guifg=NONE guibg=NONE gui=underline cterm=underline
hi Ignore guifg=NONE guibg=NONE gui=NONE cterm=NONE
hi Normal guifg=#000000 guibg=#000000 gui=NONE cterm=NONE
hi Cursor guifg=#000000 guibg=#000000 gui=NONE cterm=NONE
hi Visual guifg=#000000 guibg=#000000 gui=NONE cterm=NONE
hi VisualNOS guifg=NONE guibg=#000000 gui=NONE cterm=NONE
hi MatchParen guifg=#000000 guibg=NONE gui=underline cterm=NONE
hi Search guifg=#000000 guibg=#000000 gui=NONE cterm=NONE
hi IncSearch guifg=#000000 guibg=#000000 gui=NONE cterm=NONE
hi LineNr guifg=#000000 guibg=NONE gui=NONE cterm=NONE
hi StatusLine guifg=#000000 guibg=#000000 gui=NONE cterm=NONE
hi StatusLineNC guifg=#000000 guibg=NONE gui=NONE cterm=NONE
hi WildMenu guifg=#000000 guibg=#000000 gui=NONE cterm=NONE
hi Pmenu guifg=NONE guibg=#000000 gui=NONE cterm=NONE
hi PmenuSbar guifg=NONE guibg=#000000 gui=NONE cterm=NONE
hi PmenuThumb guifg=NONE guibg=#000000 gui=NONE cterm=NONE
hi PmenuSel guifg=#000000 guibg=#000000 gui=NONE cterm=NONE
hi ColorColumn guifg=NONE guibg=#000000 gui=NONE cterm=NONE
hi CursorColumn guifg=NONE guibg=#000000 gui=NONE cterm=NONE
hi VertSplit guifg=#000000 guibg=NONE gui=NONE cterm=NONE
hi TabLine guifg=#000000 guibg=NONE gui=NONE cterm=NONE
hi TabLineSel guifg=#000000 guibg=NONE gui=NONE cterm=NONE
hi TabLineFill guifg=NONE guibg=NONE gui=NONE cterm=NONE
hi SpecialKey guifg=#000000 guibg=NONE gui=NONE cterm=NONE
hi NonText guifg=#000000 guibg=NONE gui=NONE cterm=NONE
hi Title guifg=#000000 guibg=NONE gui=NONE cterm=NONE
hi SpellBad guifg=#000000 guibg=NONE gui=NONE cterm=NONE
hi WarningMsg guifg=#000000 guibg=NONE gui=NONE cterm=NONE
hi ErrorMsg guifg=#000000 guibg=NONE gui=NONE cterm=NONE
hi Directory guifg=#000000 guibg=NONE gui=NONE cterm=NONE
hi Question guifg=#000000 guibg=NONE gui=NONE cterm=NONE
hi SpellRare guifg=#000000 guibg=NONE gui=NONE cterm=NONE
hi SpellLocal guifg=#000000 guibg=NONE gui=NONE cterm=NONE
hi SpellCap guifg=#000000 guibg=NONE gui=NONE cterm=NONE
hi Conceal guifg=NONE guibg=NONE gui=NONE cterm=NONE
hi CustorIM guifg=NONE guibg=NONE gui=NONE cterm=NONE
hi Folded guifg=#000000 guibg=#000000 gui=NONE cterm=NONE
hi Foldcolumn guifg=NONE guibg=NONE gui=NONE cterm=NONE
hi SignColumn guifg=NONE guibg=NONE gui=NONE cterm=NONE
hi CursorLine guifg=NONE guibg=#000000 gui=NONE cterm=NONE
hi CursorLineNr guifg=NONE guibg=NONE gui=NONE cterm=NONE
hi ModeMsg guifg=NONE guibg=NONE gui=NONE cterm=NONE
hi DiffAdd guifg=#000000 guibg=#000000 gui=NONE cterm=NONE
hi DiffDelete guifg=#000000 guibg=#000000 gui=NONE cterm=NONE
hi DiffChange guifg=#000000 guibg=#000000 gui=NONE cterm=NONE
hi DiffText guifg=#000000 guibg=#000000 gui=NONE cterm=NONE
hi shSet guifg=#000000 guibg=NONE gui=NONE cterm=NONE
hi shSetOption guifg=#000000 guibg=NONE gui=NONE cterm=NONE
hi shStatement guifg=#000000 guibg=NONE gui=NONE cterm=NONE
hi shFunctionKey guifg=#000000 guibg=NONE gui=NONE cterm=NONE