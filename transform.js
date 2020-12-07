const fs = require('fs')
const yaml = require('yaml')
const hslToHex = require('hsl-to-hex')

const DEFAULT_VALUES = { foreground: 'NONE', background: 'NONE', gui: 'NONE', cterm: 'NONE' }
const COLOR_PATH = './constants/colors.yml'
const ENCODING = 'utf-8'
const COLOR_KEYS = ['foreground', 'background']
const HSL_PATTERN = /([0-9]+)%?, ?([0-9]+)%?, ?([0-9]+)/g

const colors = yaml.parse(fs.readFileSync(COLOR_PATH, ENCODING))
const pipe = fns => x => fns.reduce((x, f) => f(x), x)

const getMatches = k => [...colors[k].matchAll(HSL_PATTERN)]
const toNumbers = m => m.flat().slice(1, 4).map(s => parseInt(s))
const toHex = args => hslToHex(...args)
const getColor = pipe([getMatches, toNumbers,  toHex])


const format = obj => Object.keys(obj).reduce((acc, cur) => ({
      ...acc,
      [cur]: Object.keys(obj[cur]).reduce((a, c) => ({
        ...a,
        [c]: COLOR_KEYS.includes(c) ? getColor(obj[cur][c]) : obj[cur][c] }),
      DEFAULT_VALUES),
    }), {})

const toRenderStrings = obj => Object.keys(obj).map(k =>
  `hi ${k} guifg=${obj[k].foreground} guibg=${obj[k].background} gui=${obj[k].gui} cterm=${obj[k].cterm}`)

const transform = pipe([format, toRenderStrings])

module.exports = transform
