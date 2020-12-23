const fs = require('fs')

const NEW_LINE = '\n'

const header = `\
" ===============================================================
" Zeilo
" A vim color theme
" URL: TODO
" Author: Charles Victor Conner
" ===============================================================
`

const prefix = `\
set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name="zeilo"

syntax match tsFuncCall /\\<\\K\\k*\\ze\\s*(/
hi tsFuncCall guifg=#ffa857 guibg=NONE gui=NONE cterm=NONE
`

const customSyntax = `\
"" CUSTOM SYNTAX
syntax match tsFuncCall /\\<\\K\\k*\\ze\\s*(/
hi tsFuncCall guifg=#ffa857 guibg=NONE gui=NONE cterm=NONE
`

// TODO: https://stackoverflow.com/questions/10225011/highlight-all-upper-case-words-in-vim/10225584

const renderSection = (key, sections) => `\
"" ${key.toUpperCase()}
${Object.values(sections[key]).join(NEW_LINE)}
`

const toRenderString = sections => `\
${header}
${prefix}
${Object.keys(sections).map(key => renderSection(key, sections)).join(NEW_LINE)}
${customSyntax}`

const render = sections => {
  fs.mkdirSync('./colors')
  fs.writeFileSync('./colors/zeilo.vim', toRenderString(sections))
}

module.exports = render
