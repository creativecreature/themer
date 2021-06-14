const getColor = require('../utils/getColor')

const DEFAULT_KEYS = ['foreground', 'background']

// This is the simplest transformer, it extracts colors for an array of keys.
const transformColorKeys = (obj, colorKeys = DEFAULT_KEYS) => Object.keys(obj).reduce((a, c) => {
  if (typeof obj[c] === 'object') {
    return { ...a,  [c]: transformColorKeys(obj[c])}
  }
  return { ...a, [c]: colorKeys.includes(c) ? getColor(obj[c]) : obj[c] }
}, {})

module.exports = transformColorKeys
