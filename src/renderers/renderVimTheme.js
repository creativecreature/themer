const fs = require('fs')

const NEW_LINE = '\n'

const header = `\
" ===============================================================
" Creative Creature
" VIM Color Theme
" Author: Victor Conner
" ===============================================================
`

const prefix = `\
set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name="creativecreature"
`

const renderSection = (key, sections) => `\
"" ${key.toUpperCase()}
${Object.values(sections[key]).join(NEW_LINE)}
`

const toRenderString = sections => `\
${header}
${prefix}
${Object.keys(sections).map(key => renderSection(key, sections)).join(NEW_LINE)}`

const renderVimTheme = sections => {
  fs.mkdirSync('./colors',)
  fs.writeFileSync('./colors/creativecreature.vim', toRenderString(sections))
}

module.exports = renderVimTheme
