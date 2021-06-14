const fs = require('fs')
const yaml = require('yaml')
const transformSyntaxTemplate = require('./src/transformers/transformSyntaxTemplate')
const transformLightlineTemplate = require('./src/transformers/transformLightlineTemplate')
const renderVimTheme = require('./src/renderers/renderVimTheme')
const renderLightline = require('./src/renderers/renderLightline')

// == TEMPLATES ================================================================
const generalTemplate = yaml.parse(fs.readFileSync('./src/templates/general.yml', 'utf-8'))
const bashTemplate = yaml.parse(fs.readFileSync('./src/templates/bash.yml', 'utf-8'))
const javascriptTemplate = yaml.parse(fs.readFileSync('./src/templates/javascript.yml', 'utf-8'))
const typescriptTemplate = yaml.parse(fs.readFileSync('./src/templates/typescript.yml', 'utf-8'))
const lightlineTemplate = yaml.parse(fs.readFileSync('./src/templates/lightline.yml', 'utf-8'))

// == TRANSFORM ================================================================
const syntaxSections = {
  general: transformSyntaxTemplate(generalTemplate),
  bash: transformSyntaxTemplate(bashTemplate),
  javascript: transformSyntaxTemplate(javascriptTemplate),
  typescript: transformSyntaxTemplate(typescriptTemplate),
}
const lightline = transformLightlineTemplate(lightlineTemplate)

// == RENDER  ==================================================================
renderVimTheme(syntaxSections)
renderLightline(lightline)
