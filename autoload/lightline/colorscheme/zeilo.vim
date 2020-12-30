" ===============================================================
" Zeilo
" A vim color theme
" URL: TODO
" Author: Charles Victor Conner
" ===============================================================

let s:p = {"normal": {}, "inactive": {}, "insert": {}, "replace": {}, "visual": {}, "tabline": {}}
let s:p.normal.left     = [[["#292d3d", 0], ["#f78e6e", 0]], [["#f78e6e", 0], ["#33384d", 0]]]
let s:p.normal.right    = [[["#292d3d", 0], ["#f78e6e", 0]], [["#f78e6e", 0], ["#33384d", 0]]]
let s:p.normal.middle   = [[["#5a6287", 0], ["#292d3d", 0]]]
let s:p.normal.warning  = [[["#292d3d", 0], ["#ffcb6b", 0]]]
let s:p.normal.error    = [[["#292d3d", 0], ["#ffcb6b", 0]]]

let s:p.insert.left     = [[["#292d3d", 0], ["#c797e7", 0]], [["#c797e7", 0], ["#33384d", 0]]]
let s:p.insert.right    = [[["#292d3d", 0], ["#c797e7", 0]], [["#c797e7", 0], ["#33384d", 0]]]
let s:p.insert.middle   = [[["#5a6287", 0], ["#292d3d", 0]]]

let s:p.visual.left     = [[["#292d3d", 0], ["#8adeff", 0]], [["#8adeff", 0], ["#33384d", 0]]]
let s:p.visual.right    = [[["#292d3d", 0], ["#8adeff", 0]], [["#8adeff", 0], ["#33384d", 0]]]
let s:p.visual.middle   = [[["#5a6287", 0], ["#292d3d", 0]]]

let s:p.replace.left     = [[["#292d3d", 0], ["#c3e88d", 0]], [["#c3e88d", 0], ["#33384d", 0]]]
let s:p.replace.right    = [[["#292d3d", 0], ["#c3e88d", 0]], [["#c3e88d", 0], ["#33384d", 0]]]
let s:p.replace.middle   = [[["#5a6287", 0], ["#292d3d", 0]]]

let s:p.inactive.left     = [[["#292d3d", 0], ["#33384d", 0]], [["#292d3d", 0], ["#33384d", 0]]]
let s:p.inactive.right    = [[["#292d3d", 0], ["#33384d", 0]], [["#292d3d", 0], ["#33384d", 0]]]
let s:p.inactive.middle   = [[["#292d3d", 0], ["#33384d", 0]]]

let g:lightline#colorscheme#zeilo#palette = lightline#colorscheme#flatten(s:p)
