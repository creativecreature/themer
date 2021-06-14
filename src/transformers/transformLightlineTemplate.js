const getColor = require('../utils/getColor')

const COLOR_KEYS = ['foreground', 'background']

const deepTransform = obj => Object.keys(obj).reduce((a, c) => {
  if (typeof obj[c] === 'object') {
    return { ...a,  [c]: deepTransform(obj[c])}
  }
  return { ...a, [c]: COLOR_KEYS.includes(c) ? getColor(obj[c]) : obj[c] }
}, {})

module.exports = deepTransform
