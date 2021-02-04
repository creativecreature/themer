const fs = require('fs')

const header = `\
" ===============================================================
" Creative Creatire
" Lightline Color Theme
" Author: Charles Victor Conner
" ===============================================================
`

const reset = 'let s:p = {"normal": {}, "inactive": {}, "insert": {}, "replace": {}, "visual": {}, "tabline": {}}'

const renderNormalMode = ({ normal: { left, right, middle, warning, error } }) => `\
let s:p.normal.left     = [ ["${left.highlight.foreground}", "${left.highlight.background}"], ["${left.meta.foreground}", "${left.meta.background}"] ]
let s:p.normal.right    = [ ["${right.highlight.foreground}", "${right.highlight.background}"], ["${right.meta.foreground}", "${right.meta.background}"] ]
let s:p.normal.middle   = [ ["${middle.foreground}", "${middle.background}"] ]
let s:p.normal.warning  = [ ["${warning.foreground}", "${warning.background}"] ]
let s:p.normal.error    = [ ["${error.foreground}", "${error.background}"] ]
`

const renderInsertMode = ({ insert: { left, right, middle } }) => `\
let s:p.insert.left     = [ ["${left.highlight.foreground}", "${left.highlight.background}"], ["${left.meta.foreground}", "${left.meta.background}"] ]
let s:p.insert.right    = [ ["${right.highlight.foreground}", "${right.highlight.background}"], ["${right.meta.foreground}", "${right.meta.background}"] ]
let s:p.insert.middle   = [ ["${middle.foreground}", "${middle.background}"] ]
`

const renderVisualMode = ({ visual: { left, right, middle } }) => `\
let s:p.visual.left     = [ ["${left.highlight.foreground}", "${left.highlight.background}"], ["${left.meta.foreground}", "${left.meta.background}"] ]
let s:p.visual.right    = [ ["${right.highlight.foreground}", "${right.highlight.background}"], ["${right.meta.foreground}", "${right.meta.background}"] ]
let s:p.visual.middle   = [ ["${middle.foreground}", "${middle.background}"] ]
`

const renderReplaceMode = ({ replace: { left, right, middle } }) => `\
let s:p.replace.left     = [ ["${left.highlight.foreground}", "${left.highlight.background}"], ["${left.meta.foreground}", "${left.meta.background}"] ]
let s:p.replace.right    = [ ["${right.highlight.foreground}", "${right.highlight.background}"], ["${right.meta.foreground}", "${right.meta.background}"] ]
let s:p.replace.middle   = [ ["${middle.foreground}", "${middle.background}"] ]
`

const renderInactive = ({ inactive: { left, right, middle } }) => `\
let s:p.inactive.left     = [ ["${left.highlight.foreground}", "${left.highlight.background}"], ["${left.meta.foreground}", "${left.meta.background}"] ]
let s:p.inactive.right    = [ ["${right.highlight.foreground}", "${right.highlight.background}"], ["${right.meta.foreground}", "${right.meta.background}"] ]
let s:p.inactive.middle   = [ ["${middle.foreground}", "${middle.background}"] ]
`

const setPalette = 'let g:lightline#colorscheme#creativecreature#palette = lightline#colorscheme#fill(s:p)'

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
  fs.writeFileSync('./autoload/lightline/colorscheme/creativecreature.vim', toRenderString(lightline))
}

module.exports = renderLightline
