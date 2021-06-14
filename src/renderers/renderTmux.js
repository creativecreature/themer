const fs = require('fs')

const createArrow = (foreground, background, direction) => `#[fg=#${foreground},bg=${background},nobold,noitalics,nounderscore]${direction === 'left' ? '' : ''}`

const renderStatusLeft = tmux => `\
set -g status-left-length 50
set -g status-left "#[fg=#252837,bg=#f78e6e,nobold] #S ${createArrow(tmux.statusLeftArrow.foreground, tmux.statusLeftArrow.background, 'right')}"
`

// The stats will have a prefix arrow with inversed colors
const renderStatusRight = tmux => `\
set -g status-right-length 150
STATS_CPU="${createArrow(tmux.statsCPU.background, tmux.statsCPU.foreground, 'left')}#[fg=${tmux.statsCPU.foreground},bg=${tmux.statsCPU.background}]#{sysstat_cpu}"
set -g @sysstat_cpu_color_low "${tmux.statsCPULow.foreground}"
set -g @sysstat_cpu_view_tmpl ' #[fg=${tmux.statsCPU.foreground},nobold]#{cpu.pused} '
STATS_MEM="${createArrow(tmux.statsMem.background, tmux.statsMem.foreground, 'left')}#[fg=${tmux.statsMem.foreground},bg=${tmux.statsMem.background}]#{sysstat_mem}"
set -g @sysstat_mem_color_low "${tmux.statsMemLow.foreground}"
set -g @sysstat_mem_view_tmpl ' #[fg=${tmux.statsMem.foreground},nobold]#{mem.used} / #[fg=${tmux.statsMem.foreground},nobold]#{mem.total} '
YY_MM_DD="${createArrow(tmux.date.background, tmux.date.foreground, 'left')}#[fg=${tmux.date.foreground},bg=${tmux.date.background}] %Y-%m-%d "
H_M="${createArrow(tmux.time.background, tmux.time.foreground, 'left')}#[fg=${tmux.time.foreground},bg=${tmux.time.background}] %H:%M "
set -g status-right "$STATS_CPU$STATS_MEM$YY_MM_DD$H_M"
`

const renderStatusBar = tmux => `\
set -g window-status-current-format "${createArrow(tmux.currentStatusBarPrefixArrow.foreground, tmux.currentStatusBarPrefixArrow.background, 'right')} #[fg=${tmux.currentStatusBarText.foreground},bg=${tmux.currentStatusBarText.background}]#I  #W #F ${createArrow(tmux.currentStatusBarSuffixArrow.foreground, tmux.currentStatusBarSuffixArrow.background, 'right')}"
set -g window-status-format "${createArrow(tmux.inactiveStatusBarPrefixArrow.foreground, tmux.inactiveStatusBarPrefixArrow.background, 'right')} #[fg=${tmux.inactiveStatusBarText.foreground},bg=${tmux.inactiveStatusBarText.background} ]#I  #W #F ${createArrow(tmux.inactiveStatusBarSuffixArrow.foreground, tmux.inactiveStatusBarSuffixArrow.background, 'right')}"
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

const renderStatus = tmux => `\
set -g status-bg "${tmux.status.background}"
set -g status-style "bg=${tmux.status.background}"
`

const toRenderString = tmux => `\
${renderStatusLeft(tmux)}
${renderStatusRight(tmux)}
${renderStatusBar(tmux)}
${renderWindows(tmux)}
${renderBorders(tmux)}
${renderStatus(tmux)}
`

const renderTmux = (tmux) => {
  fs.mkdirSync('./tmux')
  fs.writeFileSync('./tmux/creativecreature', toRenderString(tmux).trim())
}

module.exports = renderTmux
