const fs = require('fs')
const yaml = require('yaml')
const transform = require('./transform')
const render = require('./render')

// == TEMPLATES ================================================================
const generalTemplate = yaml.parse(fs.readFileSync('./constants/general.yml', 'utf-8'))
const bashTemplate = yaml.parse(fs.readFileSync('./constants/bash.yml', 'utf-8'))

// == SECTIONS =================================================================
const sections = { general: transform(generalTemplate), bash: transform(bashTemplate) }

// == RENDER  ==================================================================
render(sections)
