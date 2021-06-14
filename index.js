const fs = require('fs')
const yaml = require('yaml')

// == TEMPLATES ================================================================
const generalTemplate = yaml.parse(fs.readFileSync('./src/templates/general.yml', 'utf-8'))
const bashTemplate = yaml.parse(fs.readFileSync('./src/templates/bash.yml', 'utf-8'))
const javascriptTemplate = yaml.parse(fs.readFileSync('./src/templates/javascript.yml', 'utf-8'))
const typescriptTemplate = yaml.parse(fs.readFileSync('./src/templates/typescript.yml', 'utf-8'))
const lightlineTemplate = yaml.parse(fs.readFileSync('./src/templates/lightline.yml', 'utf-8'))
const tmuxTemplate = yaml.parse(fs.readFileSync('./src/templates/tmux.yml', 'utf-8'))

// == TRANSFORMERS =============================================================
const transformColorKeys = require('./src/transformers/transformColorKeys')
const transformSyntaxTemplate = require('./src/transformers/transformSyntaxTemplate')

// == RENDERERS =============================================================
const renderVimTheme = require('./src/renderers/renderVimTheme')
const renderLightline = require('./src/renderers/renderLightline')
const renderTmux = require('./src/renderers/renderTmux')

// == TRANSFORM ================================================================
const syntaxSections = {
  general: transformSyntaxTemplate(generalTemplate),
  bash: transformSyntaxTemplate(bashTemplate),
  javascript: transformSyntaxTemplate(javascriptTemplate),
  typescript: transformSyntaxTemplate(typescriptTemplate),
}
const lightline = transformColorKeys(lightlineTemplate)
const tmux = transformColorKeys(tmuxTemplate)

// == RENDER  ==================================================================
renderVimTheme(syntaxSections)
renderLightline(lightline)
renderTmux(tmux)
