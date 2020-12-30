const fs = require('fs')
const yaml = require('yaml')
const transformSyntaxTemplate = require('./transformers/transformSyntaxTemplate')
const transformLightlineTemplate = require('./transformers/transformLightlineTemplate')
const renderVimTheme = require('./renderers/renderVimTheme')
const renderLightline = require('./renderers/renderLightline')

// == TEMPLATES ================================================================
const generalTemplate = yaml.parse(fs.readFileSync('./templates/general.yml', 'utf-8'))
const bashTemplate = yaml.parse(fs.readFileSync('./templates/bash.yml', 'utf-8'))
const javascriptTemplate = yaml.parse(fs.readFileSync('./templates/javascript.yml', 'utf-8'))
const typescriptTemplate = yaml.parse(fs.readFileSync('./templates/typescript.yml', 'utf-8'))
const lightlineTemplate = yaml.parse(fs.readFileSync('./templates/lightline.yml', 'utf-8'))

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
