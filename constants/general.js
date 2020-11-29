const GREY_FOUR = [
  "Comment", // Any comment
  "ColorColumn", // used for the columns set with 'colorcolumn'
  "SpecialComment", // special things inside a comment
  "ColorColumn-BG", // used for the columns set with 'colorcolumn'
  "CursorColumn-BG", // the screen column that the cursor is in when 'cursorcolumn' is set
  "CursorLine-BG", // the screen line that the cursor is in when 'cursorline' is set
  "LineNr", // Line number for ":number// and ":#// commands, and when 'number' or 'relativenumber' option is set.
"NonText", // '~' and '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">// displayed when a double-wide character doesn't fit at the end of the line).
]

const CYAN = [
  "Constant", // Any constant
  "Character", // Any character constant, things like '\n'
  "Operator", // sizeof", "+", "*", etc.
  "Operator", // sizeof", "+", "*", etc.
]

const GREEN = [
  "String", // Any string
]

const BLACK = [
  "VertSplit", // The column separating vertically split windows
]

const YELLOW = [
  "Number", // Any number
  "PreProc", // Generic preprocessor
  "PreCondit", // Preprocessor #if, #else, #endif, etc.
  "Type", // Int, long, char, etc.
  "StorageClass", // Static, register, volatile, etc.
  "Structure", // Struct, union, enum, etc.
  "Typedef", // A typedef
]

const RED = [
  "Boolean", // Boolean values, TRUE/FALSE
  "Identifier", // Any variable name
  "Keyword", // Any other keyword
  "Error", // any erroneous construct
  "ErrorMsg", // error messages on the command line
]

const DARK_YELLOW = [
  "Float", // Any floating point number

]

const BLUE = [
  "Function", // Any function name as well as methods for classes
  "Include", // Preprocessor #include
  "Special", // Any special symbol
  "Directory", // directory names (and other special names in listings)
  "MatchParen", // The character under the cursor or just before it, if it is a paired bracket, and its match.
]

const PURPLE = [
  "Statement", // Any statement, TODO: an example
  "Conditional", // If, then, else, endif, switch, etc.
  "Repeat", // For, do, while, etc.
  "Label", // Case, default, etc.
  "Exception", // Try, catch throw
  "Define", // Preprocessor #define
  "Macro", // Same as Define
  "Todo", // anything that needs extra attention; mostly the keywords TODO FIXME and XXX
]

// Value of these should be: call s:h("X", {})
const NONE = [
"SpecialChar", // special character in a constant
"Tag", // you can use CTRL-] on this
"Delimiter", // character that needs attention
"Debug", // debugging statements
  "Ignore", // left blank, hidden
  "Conceal", // placeholder characters substituted for concealed text (see 'conceallevel')
  "CursorIM", // like Cursor, but used when in IME mode
  "FoldColumn", // 'foldcolumn'
  "SignColumn", // column where signs are displayed
  "CursorLineNr", // Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
  "ModeMsg", // 'showmode' message (e.g., "-- INSERT --")
  "MoreMsg", // more-prompt
]

call s:h("Pmenu", { "bg": s:menu_grey }) // Popup menu: normal item.
call s:h("PmenuSel", { "fg": s:black, "bg": s:blue }) // Popup menu: selected item.
call s:h("PmenuSbar", { "bg": s:special_grey }) // Popup menu: scrollbar.
call s:h("PmenuThumb", { "bg": s:white }) // Popup menu: Thumb of the scrollbar.
call s:h("Question", { "fg": s:purple }) // hit-enter prompt and yes/no questions
call s:h("Search", { "fg": s:light, "bg": s:purple }) // Last search pattern highlighting (see 'hlsearch'). Also used for highlighting the current line in the quickfix window and similar items that need to stand out.
call s:h("SpecialKey", { "fg": s:special_grey }) // Meta and special keys listed with ":map", also for text used to show unprintable characters in the text, 'listchars'. Generally: text that is displayed differently from what it really is.
call s:h("SpellBad", { "fg": s:red, "gui": "underline", "cterm": "underline" }) // Word that is not recognized by the spellchecker. This will be combined with the highlighting used otherwise.
call s:h("SpellCap", { "fg": s:dark_yellow }) // Word that should start with a capital. This will be combined with the highlighting used otherwise.
call s:h("SpellLocal", { "fg": s:dark_yellow }) // Word that is recognized by the spellchecker as one that is used in another region. This will be combined with the highlighting used otherwise.
call s:h("SpellRare", { "fg": s:dark_yellow }) // Word that is recognized by the spellchecker as one that is hardly ever used. spell This will be combined with the highlighting used otherwise.
call s:h("StatusLine", { "fg": s:white, "bg": s:cursor_grey }) // status line of current window
call s:h("StatusLineNC", { "fg": s:comment_grey }) // status lines of not-current windows Note: if this is equal to "StatusLine// Vim will use "^^^// in the status line of the current window.
call s:h("TabLine", { "fg": s:comment_grey }) // tab pages line, not active tab page label
call s:h("TabLineFill", {}) // tab pages line, where there are no labels
call s:h("TabLineSel", { "fg": s:white }) // tab pages line, active tab page label
call s:h("Title", { "fg": s:green }) // titles for output from ":set all", ":autocmd// etc.
call s:h("Visual", { "fg": s:visual_black, "bg": s:visual_grey }) // Visual mode selection
call s:h("VisualNOS", { "bg": s:visual_grey }) // Visual mode selection when vim is "Not Owning the Selection". Only X11 Gui's gui-x11 and xterm-clipboard supports this.
call s:h("WarningMsg", { "fg": s:yellow }) // warning messages



call s:h("WildMenu", { "fg": s:black, "bg": s:blue }) // current match in 'wildmenu' completion
call s:h("Cursor", { "fg": s:black, "bg": s:blue }) // the character under the cursor
call s:h("DiffAdd", { "bg": s:green, "fg": s:black }) // diff mode: Added line
call s:h("DiffChange", { "bg": s:yellow, "fg": s:black }) // diff mode: Changed line
call s:h("DiffDelete", { "bg": s:red, "fg": s:black }) // diff mode: Deleted line
call s:h("DiffText", { "bg": s:black, "fg": s:yellow }) // diff mode: Changed text within a changed line
call s:h("Folded", { "bg": s:cursor_grey, "fg": s:comment_grey }) // line used for closed folds
call s:h("IncSearch", { "fg": s:yellow, "bg": s:comment_grey }) " 'incsearch' highlighting; also used for the text replaced with ":s///c"
call s:h("Normal", { "fg": s:white, "bg": s:black }) // normal text
