# Created by newuser for 5.8

autoload -Uz compinit
compinit

zstyle ':completion::complete:*' gain-priveleges 1

# GPG
unset SSH_AGENT_PID
if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
  export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
fi

# Env
export EDITOR=nvim
export STARSHIP_CONFIG=~/.config/starship/starship.toml
export GPG_TTY=$(tty)
gpg-connect-agent updatestartuptty /bye > /dev/null

# Aliases
alias ssh='TERM=xterm-256color ssh'
alias ls='ls --color=auto'

# Prompt
eval "$(starship init zsh)"
