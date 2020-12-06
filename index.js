const fs = require('fs')
const yaml = require('yaml')
const hslToHex = require('hsl-to-hex')

// == CONSTANTS ================================================================
const COLORS = yaml.parse(fs.readFileSync('./constants/colors.yml', 'utf-8'))
const COLOR_KEYS = ['foreground', 'background']
const HSL_REGEX = /([0-9]+)%?, ?([0-9]+)%?, ?([0-9]+)/g
const NEW_LINE = '\n'

// == TEMPLATES ================================================================
const generalTemplate = yaml.parse(fs.readFileSync('./constants/general.yml', 'utf-8'))
const bashTemplate = yaml.parse(fs.readFileSync('./constants/bash.yml', 'utf-8'))

// == HELPERS ==================================================================
const getColor = k => hslToHex(...[COLORS[k].matchAll(HSL_REGEX)].flat().slice(1, 4).map(s => parseInt(s)))
const DEFAULT_VALUES = { foreground: 'NONE', background: 'NONE', gui: 'NONE', cterm: 'NONE' }
const extractVales = obj => Object.keys(obj).reduce((acc, cur) => ({
      ...acc,
      [cur]: Object.keys(obj[cur]).reduce((a, c) => ({
        ...a,
        [c]: COLOR_KEYS.includes(c) ? getColor(obj[cur][c]) : obj[cur][c] }),
      DEFAULT_VALUES),
    }), {})
const toRenderString = obj => Object.keys(obj).map(k =>
  `hi ${k} guifg=${obj[k].foreground} guibg=${obj[k].background} gui=${obj[k].gui} cterm=${obj[k].cterm}`)


const pipe = fns => x => fns.reduce((x, f) => f(x), x)
const transform = pipe([extractVales, toRenderString])

const general = transform(generalTemplate)
const bash = transform(bashTemplate)

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
`
const renderString = `${header}${NEW_LINE}${prefix}${NEW_LINE}${general.join(NEW_LINE)}${NEW_LINE}${bash.join(NEW_LINE)}`

fs.writeFileSync('colors.vim', renderString)
