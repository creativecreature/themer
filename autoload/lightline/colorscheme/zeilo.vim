let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:p_text_dark_one = ["#3E4452", 237, 8]
let s:p_green = ["#C3E88D", 114, 2]
let s:p_purple = ["#8095ff", 170, 5]
let s:p_yellow = ["#ffcb6b", 180, 3]
let s:p_red = ["#ff5370", 204, 1]
let s:p_cyan = ["#89DDFF", 38, 6]
let s:p_comment_grey = ["#697098", 59, 15]
let s:p_bg_one = ["#112d4b", 235, 0]
let s:p_bg_two = ["#06182d ", 235, 0]
let s:p_pink = ["#c690e9", 38, 6]

let s:p.normal.left     = [ [ s:p_bg_two, s:p_purple ], [ s:p_purple, s:p_text_dark_one ] ]
let s:p.normal.right    = copy(s:p.normal.left)
let s:p.normal.middle   = [ [ s:p_text_dark_one, s:p_bg_one ] ]
let s:p.normal.warning  = [ [ s:p_bg_one, s:p_yellow ] ]
let s:p.normal.error    = [ [ s:p_bg_one, s:p_red ] ]

let s:p.insert.left     = [ [ s:p_bg_two, s:p_yellow ], [ s:p_yellow, s:p_text_dark_one ] ]
let s:p.insert.right    = copy(s:p.insert.left)
let s:p.insert.middle   = copy(s:p.normal.middle)

let s:p.visual.left     = [ [ s:p_bg_two, s:p_pink ], [ s:p_pink, s:p_text_dark_one ] ]
let s:p.visual.right    = copy(s:p.visual.left)
let s:p.visual.middle   = copy(s:p.normal.middle)

let s:p.replace.left    = [ [ s:p_bg_one, s:p_green ], [ s:p_green, s:p_text_dark_one ] ]
let s:p.replace.right   = copy(s:p.replace.left)
let s:p.replace.middle  = copy(s:p.normal.middle)

let s:p.tabline.left    = [ [ s:p_yellow, s:p_text_dark_one ] ]
let s:p.tabline.right   = [ [ s:p_bg_one, s:p_yellow ] ]
let s:p.tabline.middle  = [ [ s:p_bg_one, s:p_text_dark_one ] ]
let s:p.tabline.tabsel  = copy(s:p.tabline.right)

let s:p.inactive.left   = [ [ s:p_bg_one, s:p_text_dark_one ], [ s:p_bg_one, s:p_text_dark_one ] ]
let s:p.inactive.right  = copy(s:p.inactive.left)
let s:p.inactive.middle = [ [ s:p_bg_one, s:p_text_dark_one ] ]

let g:lightline#colorscheme#zeilo#palette = lightline#colorscheme#flatten(s:p)
