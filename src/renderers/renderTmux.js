const fs = require('fs')

const createArrow = (foreground, background, direction) =>
  `#[fg=#${foreground},bg=${background},nobold,noitalics,nounderscore]${direction === 'left' ? '' : ''}`

const renderStatus = ({ status }) => `\
set -g status-bg "${status.background}"
set -g status-style "bg=${status.background}"
set -g status-left-length 50
set -g status-right-length 150
`

const renderStatusLeft = ({ statusLeftArrow }) => `\
STATUS_LEFT_PREFIX=${createArrow(statusLeftArrow.foreground, statusLeftArrow.background, 'left')}
STATUS_LEFT_SUFFIX=${createArrow(statusLeftArrow.foreground, statusLeftArrow.background, 'right')}
set -g status-left "$STATUS_LEFT_PREFIX#[fg=#252837,bg=#f78e6e,nobold] #S $STATUS_LEFT_SUFFIX"
`

// The stats will have a prefix arrow with inversed colors
const renderStatusRight = ({ statsCPU, statsCPULow, statsMem, statsMemLow, date, time }) => `\
CPU_PREFIX=${createArrow(statsCPU.background, statsCPU.foreground, 'left')}
CPU_SUFFIX=${createArrow(statsCPU.background, statsCPU.foreground, 'right')}
STATS_CPU="$CPU_PREFIX#[fg=${statsCPU.foreground},bg=${statsCPU.background}]#{sysstat_cpu} $CPU_SUFFIX "
set -g @sysstat_cpu_color_low "${statsCPULow.foreground}"
set -g @sysstat_cpu_view_tmpl ' #[fg=${statsCPU.foreground},nobold]#{cpu.pused}'

MEM_PREFIX=${createArrow(statsMem.background, statsMem.foreground, 'left')}
MEM_SUFFIX=${createArrow(statsMem.background, statsMem.foreground, 'right')}
STATS_MEM="$MEM_PREFIX#[fg=${statsMem.foreground},bg=${statsMem.background}]#{sysstat_mem} $MEM_SUFFIX "
set -g @sysstat_mem_color_low "${statsMemLow.foreground}"
set -g @sysstat_mem_view_tmpl ' #[fg=${statsMem.foreground},nobold]#{mem.used} / #[fg=${statsMem.foreground},nobold]#{mem.total}'

DATE_PREFIX=${createArrow(date.background, date.foreground, 'left')}
DATE_SUFFIX=${createArrow(date.background, date.foreground, 'right')}
YY_MM_DD="$DATE_PREFIX#[fg=${date.foreground},bg=${date.background}] %Y-%m-%d $DATE_SUFFIX "

TIME_PREFIX=${createArrow(time.background, time.foreground, 'left')}
TIME_SUFFIX=${createArrow(time.background, time.foreground, 'right')}
H_M="$TIME_PREFIX#[fg=${time.foreground},bg=${time.background}] %H:%M $TIME_SUFFIX"
set -g status-right "$STATS_CPU$STATS_MEM$YY_MM_DD$H_M"
`

const renderCurrentStatusbar = ({ currentStatusBarPrefixArrow, currentStatusBarText, currentStatusBarSuffixArrow }) => `\
CURRENT_STATUS_BAR_PREFIX=${createArrow(currentStatusBarPrefixArrow.foreground, currentStatusBarPrefixArrow.background, 'left')}
CURRENT_STATUS_BAR_TEXT="#[fg=${currentStatusBarText.foreground},bg=${currentStatusBarText.background}] #I - #W #F"
CURRENT_STATUS_BAR_SUFFIX=${createArrow(currentStatusBarSuffixArrow.foreground, currentStatusBarSuffixArrow.background, 'right')}
set -g window-status-current-format " $CURRENT_STATUS_BAR_PREFIX$CURRENT_STATUS_BAR_TEXT$CURRENT_STATUS_BAR_SUFFIX"
`

const renderInactiveStatusbar = ({ inactiveStatusBarPrefixArrow, inactiveStatusBarText, inactiveStatusBarSuffixArrow }) => `\
INACTIVE_STATUS_BAR_PREFIX=${createArrow(inactiveStatusBarPrefixArrow.foreground, inactiveStatusBarPrefixArrow.background, 'left')}
INACTIVE_STATUS_BAR_TEXT="#[fg=${inactiveStatusBarText.foreground},bg=${inactiveStatusBarText.background} ] #I - #W #F"
INACTIVE_STATUS_BAR_SUFFIX=${createArrow(inactiveStatusBarSuffixArrow.foreground, inactiveStatusBarSuffixArrow.background, 'right')}
set -g window-status-format " $INACTIVE_STATUS_BAR_PREFIX$INACTIVE_STATUS_BAR_TEXT$INACTIVE_STATUS_BAR_SUFFIX"
set -g window-status-separator ""
set -g monitor-activity off
`

const renderWindows = tmux => `\
setw -g window-active-style "fg=${tmux.activeWindow.foreground},bg=${tmux.activeWindow.background}"
setw -g window-style "fg=${tmux.inactiveWindow.foreground},bg=${tmux.inactiveWindow.background}"
`

const renderBorders = tmux => `\
setw -g pane-active-border-style "fg=${tmux.borders.foreground},bg=${tmux.borders.background}"
setw -g pane-border-style "fg=${tmux.borders.foreground},bg=${tmux.borders.background}"
`


const toRenderString = tmux => `\
${renderStatus(tmux)}
${renderStatusLeft(tmux)}
${renderStatusRight(tmux)}
${renderCurrentStatusbar(tmux)}
${renderInactiveStatusbar(tmux)}
${renderWindows(tmux)}
${renderBorders(tmux)}
`

const renderTmux = (tmux) => {
  fs.mkdirSync('./tmux')
  fs.writeFileSync('./tmux/creativecreature', toRenderString(tmux).trim())
}

module.exports = renderTmux
