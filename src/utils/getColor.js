const fs = require('fs')
const yaml = require('yaml')
const hslToHex = require('hsl-to-hex')
const pipe = require('./pipe')

const COLOR_PATH = './colors.yml'
const ENCODING = 'utf-8'
const HSL_PATTERN = /([0-9]+)%?, ?([0-9]+)%?, ?([0-9]+)/g

const colors = yaml.parse(fs.readFileSync(COLOR_PATH, ENCODING))

const getMatches = k => [...colors[k].matchAll(HSL_PATTERN)]
const toNumbers = m => m.flat().slice(1, 4).map(s => parseInt(s))
const toHex = args => hslToHex(...args)
const getColor = pipe([getMatches, toNumbers,  toHex])

module.exports = getColor
