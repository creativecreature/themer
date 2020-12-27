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
hi Normal guifg=#f8fafc guibg=#172636 gui=NONE cterm=NONE
hi Cursor guifg=#0f1a24 guibg=#72b5fe gui=NONE cterm=NONE
hi Underlined guifg=NONE guibg=NONE gui=underline cterm=underline
hi String guifg=#d9f499 guibg=NONE gui=NONE cterm=NONE
hi LineNr guifg=#54708c guibg=NONE gui=NONE cterm=NONE
hi WildMenu guifg=#265682 guibg=#72b5fe gui=NONE cterm=NONE
hi Pmenu guifg=NONE guibg=#184267 gui=NONE cterm=NONE
hi PmenuSbar guifg=NONE guibg=#e9eff6 gui=NONE cterm=NONE
hi PmenuThumb guifg=NONE guibg=#f8fafc gui=NONE cterm=NONE
hi PmenuSel guifg=#f8fafc guibg=#265682 gui=NONE cterm=NONE
hi ColorColumn guifg=NONE guibg=#d7e3ee gui=NONE cterm=NONE
hi CursorColumn guifg=NONE guibg=#d7e3ee gui=NONE cterm=NONE
hi VertSplit guifg=#172636 guibg=NONE gui=NONE cterm=NONE
hi TabLine guifg=#d7e3ee guibg=NONE gui=NONE cterm=NONE
hi TabLineSel guifg=#f8fafc guibg=NONE gui=NONE cterm=NONE
hi Title guifg=#d9f499 guibg=NONE gui=NONE cterm=NONE
hi Directory guifg=#f7bf64 guibg=NONE gui=NONE cterm=NONE
hi Folded guifg=#54708c guibg=#d7e3ee gui=NONE cterm=NONE
hi CursorLine guifg=NONE guibg=#d7e3ee gui=NONE cterm=NONE
hi Error guifg=#f48a91 guibg=NONE gui=NONE cterm=NONE
hi ErrorMsg guifg=#f48a91 guibg=NONE gui=NONE cterm=NONE
hi WarningMsg guifg=#f48a91 guibg=NONE gui=NONE cterm=NONE
hi SpellBad guifg=#f48a91 guibg=NONE gui=NONE cterm=NONE
hi SpellCap guifg=#f48a91 guibg=NONE gui=NONE cterm=NONE
hi SpellRare guifg=#f48a91 guibg=NONE gui=NONE cterm=NONE
hi SpellLocal guifg=#f48a91 guibg=NONE gui=NONE cterm=NONE
hi DiffAdd guifg=#0f1a24 guibg=#d9f499 gui=NONE cterm=NONE
hi DiffDelete guifg=#0f1a24 guibg=#f48a91 gui=NONE cterm=NONE
hi DiffChange guifg=#0f1a24 guibg=#fce97e gui=NONE cterm=NONE
hi DiffText guifg=#fce97e guibg=#0f1a24 gui=NONE cterm=NONE
hi Todo guifg=#4acde8 guibg=NONE gui=NONE cterm=NONE
hi MatchParen guifg=#4acde8 guibg=NONE gui=underline cterm=NONE
hi Character guifg=#4acde8 guibg=NONE gui=NONE cterm=NONE
hi CursorLineNr guifg=NONE guibg=NONE gui=NONE cterm=NONE
hi Visual guifg=#f8fafc guibg=#4acde8 gui=NONE cterm=NONE
hi VisualNOS guifg=NONE guibg=#4acde8 gui=NONE cterm=NONE
hi Search guifg=#f8fafc guibg=#4acde8 gui=NONE cterm=NONE
hi IncSearch guifg=#4acde8 guibg=#0f1a24 gui=NONE cterm=NONE
hi Question guifg=#4acde8 guibg=NONE gui=NONE cterm=NONE
hi StatusLine guifg=#4acde8 guibg=#14212f gui=NONE cterm=NONE
hi Constant guifg=#fce97e guibg=NONE gui=NONE cterm=NONE
hi Typedef guifg=#fce97e guibg=NONE gui=NONE cterm=NONE
hi Number guifg=#fce97e guibg=NONE gui=NONE cterm=NONE
hi Float guifg=#fce97e guibg=NONE gui=NONE cterm=NONE
hi Boolean guifg=#fce97e guibg=NONE gui=NONE cterm=NONE
hi Identifier guifg=#f7bf64 guibg=NONE gui=NONE cterm=NONE
hi Function guifg=#f7bf64 guibg=NONE gui=NONE cterm=NONE
hi Statement guifg=#9eb1f5 guibg=NONE gui=NONE cterm=NONE
hi Operator guifg=#9eb1f5 guibg=NONE gui=NONE cterm=NONE
hi PreCondit guifg=#9eb1f5 guibg=NONE gui=NONE cterm=NONE
hi Conditional guifg=#9eb1f5 guibg=NONE gui=NONE cterm=NONE
hi Repeat guifg=#9eb1f5 guibg=NONE gui=NONE cterm=NONE
hi Label guifg=#9eb1f5 guibg=NONE gui=NONE cterm=NONE
hi Exception guifg=#9eb1f5 guibg=NONE gui=NONE cterm=NONE
hi Type guifg=#f4b4f8 guibg=NONE gui=NONE cterm=NONE
hi StorageClass guifg=#f4b4f8 guibg=NONE gui=NONE cterm=NONE
hi Structure guifg=#f4b4f8 guibg=NONE gui=NONE cterm=NONE
hi Keyword guifg=#fce97e guibg=NONE gui=NONE cterm=NONE
hi PreProc guifg=#fce97e guibg=NONE gui=NONE cterm=NONE
hi Define guifg=#fce97e guibg=NONE gui=NONE cterm=NONE
hi Macro guifg=#fce97e guibg=NONE gui=NONE cterm=NONE
hi Include guifg=#fce97e guibg=NONE gui=NONE cterm=NONE
hi Special guifg=#d9f499 guibg=NONE gui=NONE cterm=NONE
hi SpecialKey guifg=#d9f499 guibg=NONE gui=NONE cterm=NONE
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
hi shSet guifg=#fce97e guibg=NONE gui=NONE cterm=NONE
hi shSetOption guifg=#4acde8 guibg=NONE gui=NONE cterm=NONE
hi shStatement guifg=#9eb1f5 guibg=NONE gui=NONE cterm=NONE
hi shFunctionKey guifg=#f4b4f8 guibg=NONE gui=NONE cterm=NONE

"" JAVASCRIPT
hi jsImport guifg=#fce97e guibg=NONE gui=NONE cterm=NONE
hi jsExport guifg=#fce97e guibg=NONE gui=NONE cterm=NONE
hi jsForAwait guifg=#9eb1f5 guibg=NONE gui=NONE cterm=NONE
hi jsAsyncKeyword guifg=#9eb1f5 guibg=NONE gui=NONE cterm=NONE
hi javaScriptVariable guifg=#f4b4f8 guibg=NONE gui=NONE cterm=NONE

"" TYPESCRIPT
hi typescriptGlobal guifg=#fce97e guibg=NONE gui=NONE cterm=NONE
hi typescriptGlobalObjects guifg=#fce97e guibg=NONE gui=NONE cterm=NONE
hi typescriptGlobalNodeObjects guifg=#fce97e guibg=NONE gui=NONE cterm=NONE
hi typescriptFuncCall guifg=#f7bf64 guibg=NONE gui=NONE cterm=NONE
hi typescriptBraces guifg=#f8fafc guibg=NONE gui=NONE cterm=NONE
hi typescriptFuncArg guifg=#f8fafc guibg=NONE gui=NONE cterm=NONE
