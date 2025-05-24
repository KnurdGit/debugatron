# Show MOTD on shell login
[ -f ~/.motd ] && ~/.motd

export EDITOR="/usr/bin/nvim"

export HISTTIMEFORMAT="%d/%m/%y %T "
export HISTCONTROL=ignoredups:erasedups
export HISTSIZE=1000
shopt -s histappend
shopt -s checkwinsize
export PS1="\[\e[1;32m\]\u@\h:\w\$ \[\e[0m\]"

# Color support for commands
export LS_OPTIONS='--color=auto'
alias ls='ls $LS_OPTIONS'
alias ll='ls -lh'
alias la='ls -A'
alias l='ls -CF'

# get current publick IP
function myip {
  echo $(curl -s -4 ifconfig.me)
}
