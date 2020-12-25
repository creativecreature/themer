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
hi Normal guifg=#e2edf8 guibg=#112d4b gui=NONE cterm=NONE
hi Cursor guifg=#06182d guibg=#4d7cff gui=NONE cterm=NONE
hi Underlined guifg=NONE guibg=NONE gui=underline cterm=underline
hi String guifg=#b0ec55 guibg=NONE gui=NONE cterm=NONE
hi LineNr guifg=#54708c guibg=NONE gui=NONE cterm=NONE
hi WildMenu guifg=#265682 guibg=#4d7cff gui=NONE cterm=NONE
hi Pmenu guifg=NONE guibg=#184267 gui=NONE cterm=NONE
hi PmenuSbar guifg=NONE guibg=#dae8f7 gui=NONE cterm=NONE
hi PmenuThumb guifg=NONE guibg=#e2edf8 gui=NONE cterm=NONE
hi PmenuSel guifg=#e2edf8 guibg=#265682 gui=NONE cterm=NONE
hi ColorColumn guifg=NONE guibg=#d2e2f4 gui=NONE cterm=NONE
hi CursorColumn guifg=NONE guibg=#d2e2f4 gui=NONE cterm=NONE
hi VertSplit guifg=#112d4b guibg=NONE gui=NONE cterm=NONE
hi TabLine guifg=#d2e2f4 guibg=NONE gui=NONE cterm=NONE
hi TabLineSel guifg=#e2edf8 guibg=NONE gui=NONE cterm=NONE
hi Title guifg=#b0ec55 guibg=NONE gui=NONE cterm=NONE
hi Directory guifg=#ffa857 guibg=NONE gui=NONE cterm=NONE
hi Folded guifg=#54708c guibg=#d2e2f4 gui=NONE cterm=NONE
hi CursorLine guifg=NONE guibg=#d2e2f4 gui=NONE cterm=NONE
hi Error guifg=#d84b60 guibg=NONE gui=NONE cterm=NONE
hi ErrorMsg guifg=#d84b60 guibg=NONE gui=NONE cterm=NONE
hi WarningMsg guifg=#d84b60 guibg=NONE gui=NONE cterm=NONE
hi SpellBad guifg=#d84b60 guibg=NONE gui=NONE cterm=NONE
hi SpellCap guifg=#d84b60 guibg=NONE gui=NONE cterm=NONE
hi SpellRare guifg=#d84b60 guibg=NONE gui=NONE cterm=NONE
hi SpellLocal guifg=#d84b60 guibg=NONE gui=NONE cterm=NONE
hi DiffAdd guifg=#06182d guibg=#b0ec55 gui=NONE cterm=NONE
hi DiffDelete guifg=#06182d guibg=#d84b60 gui=NONE cterm=NONE
hi DiffChange guifg=#06182d guibg=#ffda6b gui=NONE cterm=NONE
hi DiffText guifg=#ffda6b guibg=#06182d gui=NONE cterm=NONE
hi Todo guifg=#00d5ff guibg=NONE gui=NONE cterm=NONE
hi MatchParen guifg=#00d5ff guibg=NONE gui=underline cterm=NONE
hi Character guifg=#00d5ff guibg=NONE gui=NONE cterm=NONE
hi CursorLineNr guifg=NONE guibg=NONE gui=NONE cterm=NONE
hi Visual guifg=#e2edf8 guibg=#00d5ff gui=NONE cterm=NONE
hi VisualNOS guifg=NONE guibg=#00d5ff gui=NONE cterm=NONE
hi Search guifg=#e2edf8 guibg=#00d5ff gui=NONE cterm=NONE
hi IncSearch guifg=#00d5ff guibg=#06182d gui=NONE cterm=NONE
hi Question guifg=#00d5ff guibg=NONE gui=NONE cterm=NONE
hi StatusLine guifg=#00d5ff guibg=#0a2642 gui=NONE cterm=NONE
hi Constant guifg=#ffda6b guibg=NONE gui=NONE cterm=NONE
hi Typedef guifg=#ffda6b guibg=NONE gui=NONE cterm=NONE
hi Number guifg=#ffda6b guibg=NONE gui=NONE cterm=NONE
hi Float guifg=#ffda6b guibg=NONE gui=NONE cterm=NONE
hi Boolean guifg=#ffda6b guibg=NONE gui=NONE cterm=NONE
hi Identifier guifg=#ffa857 guibg=NONE gui=NONE cterm=NONE
hi Function guifg=#ffa857 guibg=NONE gui=NONE cterm=NONE
hi Statement guifg=#8095ff guibg=NONE gui=NONE cterm=NONE
hi Operator guifg=#8095ff guibg=NONE gui=NONE cterm=NONE
hi PreCondit guifg=#8095ff guibg=NONE gui=NONE cterm=NONE
hi Conditional guifg=#8095ff guibg=NONE gui=NONE cterm=NONE
hi Repeat guifg=#8095ff guibg=NONE gui=NONE cterm=NONE
hi Label guifg=#8095ff guibg=NONE gui=NONE cterm=NONE
hi Exception guifg=#8095ff guibg=NONE gui=NONE cterm=NONE
hi Type guifg=#c690e9 guibg=NONE gui=NONE cterm=NONE
hi StorageClass guifg=#c690e9 guibg=NONE gui=NONE cterm=NONE
hi Structure guifg=#c690e9 guibg=NONE gui=NONE cterm=NONE
hi Keyword guifg=#ffda6b guibg=NONE gui=NONE cterm=NONE
hi PreProc guifg=#ffda6b guibg=NONE gui=NONE cterm=NONE
hi Define guifg=#ffda6b guibg=NONE gui=NONE cterm=NONE
hi Macro guifg=#ffda6b guibg=NONE gui=NONE cterm=NONE
hi Include guifg=#ffda6b guibg=NONE gui=NONE cterm=NONE
hi Special guifg=#b0ec55 guibg=NONE gui=NONE cterm=NONE
hi SpecialKey guifg=#b0ec55 guibg=NONE gui=NONE cterm=NONE
hi Comment guifg=#54708c guibg=NONE gui=NONE cterm=NONE
hi SpecialComment guifg=#54708c guibg=NONE gui=NONE cterm=NONE
hi StatusLineNC guifg=#54708c guibg=NONE gui=NONE cterm=NONE
hi NonText guifg=#54708c guibg=NONE gui=NONE cterm=NONE
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
hi TabLineFill guifg=NONE guibg=NONE gui=NONE cterm=NONE

"" BASH
hi shSet guifg=#ffda6b guibg=NONE gui=NONE cterm=NONE
hi shSetOption guifg=#00d5ff guibg=NONE gui=NONE cterm=NONE
hi shStatement guifg=#8095ff guibg=NONE gui=NONE cterm=NONE
hi shFunctionKey guifg=#c690e9 guibg=NONE gui=NONE cterm=NONE

"" JAVASCRIPT
hi jsImport guifg=#ffda6b guibg=NONE gui=NONE cterm=NONE
hi jsExport guifg=#ffda6b guibg=NONE gui=NONE cterm=NONE
hi jsForAwait guifg=#8095ff guibg=NONE gui=NONE cterm=NONE
hi jsAsyncKeyword guifg=#8095ff guibg=NONE gui=NONE cterm=NONE
hi javaScriptVariable guifg=#c690e9 guibg=NONE gui=NONE cterm=NONE

"" TYPESCRIPT
hi typescriptGlobal guifg=#ffda6b guibg=NONE gui=NONE cterm=NONE
hi typescriptGlobalObjects guifg=#ffda6b guibg=NONE gui=NONE cterm=NONE
hi typescriptGlobalNodeObjects guifg=#ffda6b guibg=NONE gui=NONE cterm=NONE
hi typescriptFuncCall guifg=#ffa857 guibg=NONE gui=NONE cterm=NONE
hi typescriptBraces guifg=#e2edf8 guibg=NONE gui=NONE cterm=NONE
hi typescriptFuncArg guifg=#e2edf8 guibg=NONE gui=NONE cterm=NONE
