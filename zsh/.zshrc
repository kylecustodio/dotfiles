# Use vi
bindkey -v

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

setopt histignorealldups sharehistory

# ZSH PLUGINS
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# ALIAS
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# PROMPT
autoload -U promptinit
promptinit
prompt spaceship
SPACESHIP_TIME_SHOW=true
SPACESHIP_TIME_12HR=true
SPACESHIP_DIR_PREFIX='[ '
SPACESHIP_DIR_SUFFIX=' ] '
SPACESHIP_CHAR_SYMBOL=' '
SPACESHIP_VI_MODE_SHOW=false

# NEOFETCH
neofetch
