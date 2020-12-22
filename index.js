const fs = require('fs')
const yaml = require('yaml')
const transform = require('./transform')
const render = require('./render')

// == TEMPLATES ================================================================
const generalTemplate = yaml.parse(fs.readFileSync('./templates/general.yml', 'utf-8'))
const bashTemplate = yaml.parse(fs.readFileSync('./templates/bash.yml', 'utf-8'))
const javascriptTemplate = yaml.parse(fs.readFileSync('./templates/javascript.yml', 'utf-8'))
const typescriptTemplate = yaml.parse(fs.readFileSync('./templates/typescript.yml', 'utf-8'))

// == SECTIONS =================================================================
const sections = {
  general: transform(generalTemplate),
  bash: transform(bashTemplate),
  javascript: transform(javascriptTemplate),
  typescript: transform(typescriptTemplate),
}

// == RENDER  ==================================================================
render(sections)
