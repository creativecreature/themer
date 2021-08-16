" ===============================================================
" Creative Creature
" VIM Color Theme
" Author: Victor Conner
" ===============================================================

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name="creativecreature"

"" GENERAL
hi Normal guifg=#d4d7e2 guibg=#292d3d gui=NONE cterm=NONE
hi Cursor guifg=#d4d7e2 guibg=#8adeff gui=NONE cterm=NONE
hi Underlined guifg=NONE guibg=NONE gui=underline cterm=underline
hi String guifg=#c3e88d guibg=NONE gui=NONE cterm=NONE
hi LineNr guifg=#5a6287 guibg=NONE gui=NONE cterm=NONE
hi WildMenu guifg=#d4d7e2 guibg=#454b63 gui=NONE cterm=NONE
hi Pmenu guifg=NONE guibg=#33384d gui=NONE cterm=NONE
hi PmenuSbar guifg=NONE guibg=#ced1de gui=NONE cterm=NONE
hi PmenuThumb guifg=NONE guibg=#d4d7e2 gui=NONE cterm=NONE
hi PmenuSel guifg=#d4d7e2 guibg=#454b63 gui=NONE cterm=NONE
hi ColorColumn guifg=NONE guibg=#c8cbda gui=NONE cterm=NONE
hi CursorColumn guifg=NONE guibg=#c8cbda gui=NONE cterm=NONE
hi VertSplit guifg=#292d3d guibg=NONE gui=NONE cterm=NONE
hi TabLine guifg=#5a6287 guibg=#252837 gui=NONE cterm=NONE
hi TabLineSel guifg=#d4d7e2 guibg=#252837 gui=NONE cterm=NONE
hi TabLineFill guifg=#d4d7e2 guibg=#252837 gui=NONE cterm=NONE
hi Title guifg=#c3e88d guibg=NONE gui=NONE cterm=NONE
hi Directory guifg=#f78e6e guibg=NONE gui=NONE cterm=NONE
hi Folded guifg=#5a6287 guibg=#252837 gui=NONE cterm=NONE
hi CursorLine guifg=NONE guibg=#c8cbda gui=NONE cterm=NONE
hi Error guifg=#ff8599 guibg=NONE gui=NONE cterm=NONE
hi ErrorMsg guifg=#ff8599 guibg=NONE gui=NONE cterm=NONE
hi WarningMsg guifg=#ff8599 guibg=NONE gui=NONE cterm=NONE
hi SpellBad guifg=#ff8599 guibg=NONE gui=NONE cterm=NONE
hi SpellCap guifg=#ff8599 guibg=NONE gui=NONE cterm=NONE
hi SpellRare guifg=#ff8599 guibg=NONE gui=NONE cterm=NONE
hi SpellLocal guifg=#ff8599 guibg=NONE gui=NONE cterm=NONE
hi DiffAdd guifg=#212431 guibg=#c3e88d gui=NONE cterm=NONE
hi DiffDelete guifg=#212431 guibg=#ff8599 gui=NONE cterm=NONE
hi DiffChange guifg=#212431 guibg=#ffcb6b gui=NONE cterm=NONE
hi DiffText guifg=#ffcb6b guibg=#212431 gui=NONE cterm=NONE
hi Todo guifg=#8adeff guibg=NONE gui=NONE cterm=NONE
hi MatchParen guifg=#8adeff guibg=NONE gui=underline cterm=NONE
hi Character guifg=#8adeff guibg=NONE gui=NONE cterm=NONE
hi TSCharacter guifg=#8adeff guibg=NONE gui=NONE cterm=NONE
hi CursorLineNr guifg=NONE guibg=NONE gui=NONE cterm=NONE
hi Visual guifg=#d4d7e2 guibg=#8adeff gui=NONE cterm=NONE
hi VisualNOS guifg=NONE guibg=#8adeff gui=NONE cterm=NONE
hi Search guifg=#d4d7e2 guibg=#8adeff gui=NONE cterm=NONE
hi IncSearch guifg=#8adeff guibg=#212431 gui=NONE cterm=NONE
hi Question guifg=#8adeff guibg=NONE gui=NONE cterm=NONE
hi StatusLine guifg=#8adeff guibg=#252837 gui=NONE cterm=NONE
hi Constant guifg=#ffcb6b guibg=NONE gui=NONE cterm=NONE
hi Typedef guifg=#ffcb6b guibg=NONE gui=NONE cterm=NONE
hi Number guifg=#ffcb6b guibg=NONE gui=NONE cterm=NONE
hi Float guifg=#ffcb6b guibg=NONE gui=NONE cterm=NONE
hi Boolean guifg=#ffcb6b guibg=NONE gui=NONE cterm=NONE
hi TSBoolean guifg=#ffcb6b guibg=NONE gui=NONE cterm=NONE
hi Identifier guifg=#ff8599 guibg=NONE gui=NONE cterm=NONE
hi Function guifg=#f78e6e guibg=NONE gui=NONE cterm=NONE
hi Statement guifg=#c797e7 guibg=NONE gui=NONE cterm=NONE
hi Operator guifg=#c797e7 guibg=NONE gui=NONE cterm=NONE
hi PreCondit guifg=#c797e7 guibg=NONE gui=NONE cterm=NONE
hi Conditional guifg=#c797e7 guibg=NONE gui=NONE cterm=NONE
hi Repeat guifg=#c797e7 guibg=NONE gui=NONE cterm=NONE
hi Label guifg=#c797e7 guibg=NONE gui=NONE cterm=NONE
hi Exception guifg=#c797e7 guibg=NONE gui=NONE cterm=NONE
hi Type guifg=#929ddd guibg=NONE gui=NONE cterm=NONE
hi StorageClass guifg=#929ddd guibg=NONE gui=NONE cterm=NONE
hi Structure guifg=#929ddd guibg=NONE gui=NONE cterm=NONE
hi Keyword guifg=#c797e7 guibg=NONE gui=NONE cterm=NONE
hi PreProc guifg=#ffcb6b guibg=NONE gui=NONE cterm=NONE
hi Define guifg=#ffcb6b guibg=NONE gui=NONE cterm=NONE
hi Macro guifg=#ffcb6b guibg=NONE gui=NONE cterm=NONE
hi Include guifg=#ffcb6b guibg=NONE gui=NONE cterm=NONE
hi Special guifg=#d4d7e2 guibg=NONE gui=NONE cterm=NONE
hi SpecialKey guifg=#c3e88d guibg=NONE gui=NONE cterm=NONE
hi Comment guifg=#5a6287 guibg=NONE gui=NONE cterm=NONE
hi TSComment guifg=#5a6287 guibg=NONE gui=NONE cterm=NONE
hi SpecialComment guifg=#5a6287 guibg=NONE gui=NONE cterm=NONE
hi StatusLineNC guifg=#5a6287 guibg=NONE gui=NONE cterm=NONE
hi NonText guifg=#5a6287 guibg=NONE gui=NONE cterm=NONE
hi Ignore guifg=NONE guibg=NONE gui=NONE cterm=NONE
hi Conceal guifg=NONE guibg=NONE gui=NONE cterm=NONE
hi Tag guifg=NONE guibg=NONE gui=NONE cterm=NONE
hi Delimiter guifg=NONE guibg=NONE gui=NONE cterm=NONE
hi Debug guifg=NONE guibg=NONE gui=NONE cterm=NONE
hi CustorIM guifg=NONE guibg=NONE gui=NONE cterm=NONE
hi Foldcolumn guifg=NONE guibg=NONE gui=NONE cterm=NONE
hi SignColumn guifg=NONE guibg=NONE gui=NONE cterm=NONE
hi ModeMsg guifg=NONE guibg=NONE gui=NONE cterm=NONE
hi SpecialChar guifg=NONE guibg=NONE gui=NONE cterm=NONE
