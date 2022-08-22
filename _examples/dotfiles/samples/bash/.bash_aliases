#  ~/.bash_aliases

#####################################
############## UPDATES ##############
#####################################
alias uu='pkg update && pkg upgrade'
alias auu='apt update && apt upgrade'

#####################################
############### PATH ################
#####################################


#####################################
############### DIR #################
#####################################
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias .......='cd ../../../../../..'
alias ls='ls --color=auto'
alias la='ls -A --color=auto'
alias ll='ls -l --color'
alias lsh='ls -lh --color'
alias lla='ls -lA --color'
alias lsd='ls -d */ --color'
alias lz='ll -rS --color'
alias lx='ll -BX --color'
alias lm='la | more color'
alias l.='ls -d .* --color=auto'
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'''
alias p='pwd'

#######################################
############ PREMISSION ###############
#######################################

# Files and Folders
alias mkdir='mkdir -p -v'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i;'         
alias ln='ln -i'
alias rf='rm -Rf'
alias move='mv'

# Rights
alias chownall='sudo chown u0_a296:u0_a296'
alias chownallr='sudo chown -R u0_a296:u0_a296'
alias chmodall='sudo chmod 777'
alias chmodallr='sudo chmod -R 777'

## super
alias sudo='sudo '
alias sudosu='sudo su '

# Privileged access
if [ $UID -ne 0 ]; then
    alias sudo='sudo '
    alias scat='sudo cat'
    alias svim='sudo vim'
    alias root='sudo su'
    alias reboot='sudo reboot'
    alias halt='sudo halt'
    alias netcfg='sudo netcfg2'
fi   

#######################################
############ EXECUTIONS ###############
#######################################
alias cls='clear'
alias e='logout'
alias q='exit'
alias eb='exec bash'
alias t='touch'
alias top='htop'

### processes
alias psg='ps -ef | g '
alias j='jobs'
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

## events
alias vdir='vdir --color=auto'
alias watch='watch --color'
alias cower='cower --color=auto'
alias watd='watch -d du --summarize'

######################################
############### GIT ##################
######################################

alias gcl='git clone'
alias gst='clear; git status -s'
alias gcm='git commit -a -m'
alias gre='git remote -v'
alias gpush='git push origin master'
alias gpull='clear; git pull origin master'

########################################
############ COMPRESSION ###############
########################################

alias untar='tar -xzvf'

########################################
################ CODE ##################
########################################

# Diffs
alias diff='diff --color=auto'

# Python
alias py2='python2'
alias py='python3'
alias py3='python3'
alias pip='pip'
alias pip2='pip2'
alias pip3='pip'
alias ipy='ipython'

### Go
alias gg='go get'

# dev
alias pl='perl'

########################################
################ TEXT ##################
########################################

### log
alias dmesg='dmesg --color=auto'

### text
alias c='cat'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias nano='nano -m'

### history
alias hi='history'
alias hiref='echo -n "Refreshing history... "; hcln; history -c; history -r; echo "done."'
alias hitop='history | awk "{ print $2 }" | sort | uniq -c | sort -rn | head'

# mod comms
alias diff='colordiff'             
alias free='free -mlt'
alias more='less'
alias nano='nano -w'
alias ping='ping -c 5'

##########################################
################ ONLINE ##################
##########################################

### online
alias ip='ip -c'
alias curllo='curl LO'

# online
alias openports='netstat --all --numeric --programs --inet --inet6'
alias pg='ps -Af | grep $1'
alias connections='sudo lsof -n -P -i +c 15'
alias arp-clear='ip -s -s neigh flush all'

##########################################
################ STORAGE #################
##########################################

# storage
alias du='du -h'
alias dus='du --summarize'
alias duS='du -sk * | sort -n'
alias df='df -h'

##############################################
############ PACKAGE MANAGEMENT ##############
##############################################

# Package control
alias apti='apt-get install'
alias aptr='apt-get remove'
alias aptp='apt-get purge'
alias aptu='apt-get update'
alias aptfi='apt-get -f install'
alias aptse='apt-cache search'
alias aptshh='apt-cache show'
alias aptp='apt-cache policy'
alias aptcl='apt-get clean && apt-get autoclean && apt-get dist-clean && apt-get autoremove'
alias upgrade='apt-get update && apt-get upgrade && apt-get clean'

