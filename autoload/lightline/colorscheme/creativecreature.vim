" ===============================================================
" Creative Creatire
" Lightline Color Theme
" Author: Victor Conner
" ===============================================================

let s:p = {"normal": {}, "inactive": {}, "insert": {}, "replace": {}, "visual": {}, "tabline": {}}
let s:p.normal.left     = [ ["#292d3d", "#dc8fbe"], ["#dc8fbe", "#33384d"] ]
let s:p.normal.right    = [ ["#292d3d", "#dc8fbe"], ["#dc8fbe", "#33384d"] ]
let s:p.normal.middle   = [ ["#5a6287", "#292d3d"] ]
let s:p.normal.warning  = [ ["#292d3d", "#ffcb6b"] ]
let s:p.normal.error    = [ ["#292d3d", "#ff8599"] ]

let s:p.insert.left     = [ ["#292d3d", "#ff8599"], ["#ff8599", "#33384d"] ]
let s:p.insert.right    = [ ["#292d3d", "#ff8599"], ["#ff8599", "#33384d"] ]
let s:p.insert.middle   = [ ["#5a6287", "#292d3d"] ]

let s:p.visual.left     = [ ["#292d3d", "#8adeff"], ["#8adeff", "#33384d"] ]
let s:p.visual.right    = [ ["#292d3d", "#8adeff"], ["#8adeff", "#33384d"] ]
let s:p.visual.middle   = [ ["#5a6287", "#292d3d"] ]

let s:p.replace.left     = [ ["#292d3d", "#c3e88d"], ["#c3e88d", "#33384d"] ]
let s:p.replace.right    = [ ["#292d3d", "#c3e88d"], ["#c3e88d", "#33384d"] ]
let s:p.replace.middle   = [ ["#5a6287", "#292d3d"] ]

let s:p.inactive.left     = [ ["#292d3d", "#33384d"], ["#292d3d", "#33384d"] ]
let s:p.inactive.right    = [ ["#292d3d", "#33384d"], ["#292d3d", "#33384d"] ]
let s:p.inactive.middle   = [ ["#292d3d", "#33384d"] ]

let g:lightline#colorscheme#creativecreature#palette = lightline#colorscheme#fill(s:p)
