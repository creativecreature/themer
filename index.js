const fs = require('fs')
const yaml = require('yaml')
const hslToHex = require('hsl-to-hex')

// == CONSTANTS ================================================================
const COLORS = yaml.parse(fs.readFileSync('./constants/colors.yml', 'utf-8'))
const KEYS_TO_REMOVE = ['description']
const CAPTURE_NUMBER = /([0-9]+)%?, ?([0-9]+)%?, ?([0-9]+)/g

// == TEMPLATES ================================================================
const generalTemplate = yaml.parse(fs.readFileSync('./constants/general.yml', 'utf-8'))
const bashTemplate = yaml.parse(fs.readFileSync('./constants/bash.yml', 'utf-8'))

// == HELPERS ==================================================================
const cleanKeys = obj =>
  Object.keys(obj).reduce(
    (acc, cur) => ({
      ...acc,
      [cur]: Object.keys(obj[cur])
        .filter(k => !KEYS_TO_REMOVE.includes(k))
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
          [c]: hslToHex(
            ...[...obj[cur][c].matchAll(CAPTURE_NUMBER)]
              .flat()
              .slice(1, 4)
              .map(s => parseInt(s)),
          ),
        }),
        {},
      ),
    }),
    {},
  )

const withoutFields = cleanKeys(bashTemplate)
const withColors = getColor(withoutFields)
const withHex = convertToHex(withColors)
console.log(withHex)
