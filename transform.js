const COLOR_KEYS = ['foreground', 'background']
const HSL_REGEX = /([0-9]+)%?, ?([0-9]+)%?, ?([0-9]+)/g

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


