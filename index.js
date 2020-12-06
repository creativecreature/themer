const fs = require('fs')
const yaml = require('yaml')
const hslToHex = require('hsl-to-hex')

// == CONSTANTS ================================================================
const COLORS = yaml.parse(fs.readFileSync('./constants/colors.yml', 'utf-8'))
const COLOR_KEYS = ['foreground', 'background']
const HSL_REGEX = /([0-9]+)%?, ?([0-9]+)%?, ?([0-9]+)/g
const NEW_LINE = '\n';
const TAB = '\t'

// == TEMPLATES ================================================================
const generalTemplate = yaml.parse(fs.readFileSync('./constants/general.yml', 'utf-8'))
const bashTemplate = yaml.parse(fs.readFileSync('./constants/bash.yml', 'utf-8'))

// == HELPERS ==================================================================
const extractColorKeys = obj =>
  Object.keys(obj).reduce(
    (acc, cur) => ({
      ...acc,
      [cur]: Object.keys(obj[cur])
        .filter(k => COLOR_KEYS.includes(k))
        .reduce((a, c) => ({ ...a, [c]: obj[cur][c] }), {}),
    }),
    {},
  )

const getColor = obj =>
  Object.keys(obj).reduce(
    (acc, cur) => ({
      ...acc,
      [cur]: Object.keys(obj[cur]).reduce((a, c) => ({ ...a, [c]: COLORS[obj[cur][c]] }), {}),
    }),
    {},
  )

const convertToHex = obj =>
  Object.keys(obj).reduce(
    (acc, cur) => ({
      ...acc,
      [cur]: Object.keys(obj[cur]).reduce(
        (a, c) => ({
          ...a,
          [c]: obj[cur][c] ? hslToHex(
            ...[...obj[cur][c].matchAll(HSL_REGEX)]
              .flat()
              .slice(1, 4)
              .map(s => parseInt(s)),
          ) : '',
        }),
        {},
      ),
    }),
    {},
  )

const pipe = fns => x => fns.reduce((x, f) => f(x), x)

const fromTemplate = pipe([extractColorKeys, getColor, convertToHex])


const general = fromTemplate(generalTemplate)
const bash = fromTemplate(bashTemplate)

const header = `
" ===============================================================
" Zeilo
" A vim color theme
" URL: TODO
" Author: Charles Victor Conner
" ===============================================================
`
const renderString = `${header}`

fs.writeFileSync('colors.vim', renderString)
