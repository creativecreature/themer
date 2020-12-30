const pipe = require('../utils/pipe')
const getColor = require('../utils/getColor')

const DEFAULT_VALUES = { foreground: 'NONE', background: 'NONE', gui: 'NONE', cterm: 'NONE' }
const COLOR_KEYS = ['foreground', 'background']

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
