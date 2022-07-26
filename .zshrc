# ZSH Features
export HISTFILE=~/.zshhist
export HISTSIZE=1000000
export SAVEHIST=1000000
export ZSH="$HOME/.oh-my-zsh"
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_REDUCE_BLANKS
setopt INC_APPEND_HISTORY_TIME
setopt EXTENDED_HISTORY

ZSH_THEME="fox"

source $ZSH/oh-my-zsh.sh
autoload -Uz compinit; compinit
autoload -Uz promptinit; promptinit
zstyle ':completion:*' menu select
zstyle ':completion::complete:*' gain-priveleges 1

# GPG
unset SSH_AGENT_PID
if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
  export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
fi

# Env
export PATH=/home/kleidi/bin:$PATH
export EDITOR=nvim
export VISUAL=nvim
export GPG_TTY=$(tty)
gpg-connect-agent updatestartuptty /bye > /dev/null

# Aliases
alias ssh='TERM=xterm-256color ssh'
alias ls='ls --color=auto'
alias trim='paru -Qdtq | paru -Rns -'
alias sway='~/bin/sway-launch.sh'

alias gch='git checkout'
alias ga='git add -A'
alias gs='git status'
alias gc='git commit'
alias gp='git push'
