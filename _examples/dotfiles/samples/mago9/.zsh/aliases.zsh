#Generally Useful
alias h='history 10'
alias hh='history 20'
alias hhh='history 30'

alias fch='fc -10 0'
alias fchh='fc -20 0'
alias fchhh='fc -30 0'

alias dateymd='date +%Y-%m-%d'
alias ll='ls -l'

alias col1="awk '{print \$1}'"
alias col2="awk '{print \$2}'"
alias col3="awk '{print \$3}'"

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias .......='cd ../../../../../..'
alias ........='cd ../../../../../../..'
alias .........='cd ../../../../../../../..'

# OSX
alias flush-cache="sudo discoveryutil udnsflushcaches"
alias reset-dns="sudo discoveryutil mdnsflushcache"
alias updatedb="sudo /usr/libexec/locate.updatedb"
alias brew-dump="brew bundle dump --force --file=~/Brewfile"

# Alias git to hub wrapper
alias git=hub

# Vagrant
alias vagrant-chef="vagrant provision --provision-with chef_client"

# AWS
alias ecr-login='eval "$(aws ecr get-login --region us-east-1)"'

# Docker
alias docker-clean-exited-containers='docker ps -aqf status=exited | xargs -n1 docker rm'

# JMeter
alias ojmeter='open /usr/local/bin/jmeter'

# Mysql
#unalias mysql
