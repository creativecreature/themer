const fs = require('fs')

const header = `\
" ===============================================================
" Zeilo
" A lightline color theme
" URL: TODO
" Author: Charles Victor Conner
" ===============================================================
`

const reset = 'let s:p = {"normal": {}, "inactive": {}, "insert": {}, "replace": {}, "visual": {}, "tabline": {}}'

const renderNormalMode = ({ normal: { left, right, middle, warning, error } }) => `\
let s:p.normal.left     = [[["${left.highlight.foreground}", 0], ["${left.highlight.background}", 0]], [["${left.meta.foreground}", 0], ["${left.meta.background}", 0]]]
let s:p.normal.right    = [[["${right.highlight.foreground}", 0], ["${right.highlight.background}", 0]], [["${right.meta.foreground}", 0], ["${right.meta.background}", 0]]]
let s:p.normal.middle   = [[["${middle.foreground}", 0], ["${middle.background}", 0]]]
let s:p.normal.warning  = [[["${warning.foreground}", 0], ["${warning.background}", 0]]]
let s:p.normal.error    = [[["${error.foreground}", 0], ["${error.background}", 0]]]
`

const renderInsertMode = ({ insert: { left, right, middle } }) => `\
let s:p.insert.left     = [[["${left.highlight.foreground}", 0], ["${left.highlight.background}", 0]], [["${left.meta.foreground}", 0], ["${left.meta.background}", 0]]]
let s:p.insert.right    = [[["${right.highlight.foreground}", 0], ["${right.highlight.background}", 0]], [["${right.meta.foreground}", 0], ["${right.meta.background}", 0]]]
let s:p.insert.middle   = [[["${middle.foreground}", 0], ["${middle.background}", 0]]]
`

const renderVisualMode = ({ visual: { left, right, middle } }) => `\
let s:p.visual.left     = [[["${left.highlight.foreground}", 0], ["${left.highlight.background}", 0]], [["${left.meta.foreground}", 0], ["${left.meta.background}", 0]]]
let s:p.visual.right    = [[["${right.highlight.foreground}", 0], ["${right.highlight.background}", 0]], [["${right.meta.foreground}", 0], ["${right.meta.background}", 0]]]
let s:p.visual.middle   = [[["${middle.foreground}", 0], ["${middle.background}", 0]]]
`

const renderReplaceMode = ({ replace: { left, right, middle } }) => `\
let s:p.replace.left     = [[["${left.highlight.foreground}", 0], ["${left.highlight.background}", 0]], [["${left.meta.foreground}", 0], ["${left.meta.background}", 0]]]
let s:p.replace.right    = [[["${right.highlight.foreground}", 0], ["${right.highlight.background}", 0]], [["${right.meta.foreground}", 0], ["${right.meta.background}", 0]]]
let s:p.replace.middle   = [[["${middle.foreground}", 0], ["${middle.background}", 0]]]
`

const renderInactive = ({ inactive: { left, right, middle } }) => `\
let s:p.inactive.left     = [[["${left.highlight.foreground}", 0], ["${left.highlight.background}", 0]], [["${left.meta.foreground}", 0], ["${left.meta.background}", 0]]]
let s:p.inactive.right    = [[["${right.highlight.foreground}", 0], ["${right.highlight.background}", 0]], [["${right.meta.foreground}", 0], ["${right.meta.background}", 0]]]
let s:p.inactive.middle   = [[["${middle.foreground}", 0], ["${middle.background}", 0]]]
`

const setPalette = 'let g:lightline#colorscheme#zeilo#palette = lightline#colorscheme#flatten(s:p)'

const toRenderString = lightline => `\
${header}
${reset}
${renderNormalMode(lightline)}
${renderInsertMode(lightline)}
${renderVisualMode(lightline)}
${renderReplaceMode(lightline)}
${renderInactive(lightline)}
${setPalette}
`

const renderLightline = (lightline) => {
  fs.mkdirSync('./autoload/lightline/colorscheme', { recursive: true })
  fs.writeFileSync('./autoload/lightline/colorscheme/zeilo.vim', toRenderString(lightline))
}

module.exports = renderLightline
