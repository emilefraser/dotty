#  ~/.bash_aliases

alias uu='pkg update && pkg upgrade'
alias auu='apt update && apt upgrade'

### path
alias thome='cd $HOME'
alias tstore='cd ~/storage'
alias tusr='cd $PREFIX'
alias tubin='cd $PREFIX/bin'
alias tulib='cd $PREFIX/lib'
alias tuvar='cd $PREFIX/var'
alias d='cd ~/Downloads' 
alias gh='cd ~/gh'
alias pscr='cd ~/pscr'
alias sd='cd /sdcard'
alias sdx='cd /storage/7645-4B1C'
alias music='cd /sdcard/Music'
alias musicx='cd /storage/7645-4B1C/music'

### dir
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
#alias .='pwd'
alias p='pwd'

### premission bound items
alias mkdir='mkdir -p -v'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i;'         
alias ln='ln -i'
alias rf='rm -Rf'
alias move='mv'

### terminal executions
alias cls='clear'
alias e='logout'
alias q='exit'
alias eb='exec bash'
alias t='touch'
alias top='htop'


# git
alias gcl='git clone'
alias gst='clear; git status -s'
alias gcm='git commit -a -m'
alias gre='git remote -v'
alias gpush='git push origin master'
alias gpull='clear; git pull origin master'

# compression
alias untar='tar -xzvf'

# code
alias diff='diff --color=auto'

# python
alias py2='python2'
alias py='python3'
alias py3='python3'
alias pip='pip'
alias pip2='pip2'
alias pip3='pip'
alias ipy='ipython'

### go
alias gg='go get'

### log
alias dmesg='dmesg --color=auto'

### text
alias c='cat'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias nano='nano -m'

# rights
alias chownall='sudo chown u0_a296:u0_a296'
alias chownallr='sudo chown -R u0_a296:u0_a296'
alias chmodall='sudo chmod 777'
alias chmodallr='sudo chmod -R 777'

### online
alias ip='ip -c'
alias curllo='curl LO'

### processes
alias psg='ps -ef | g '
alias j='jobs'
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

### history
alias hi='history'
alias hiref='echo -n "Refreshing history... "; hcln; history -c; history -r; echo "done."'
alias hitop='history | awk "{ print $2 }" | sort | uniq -c | sort -rn | head'


## events
alias vdir='vdir --color=auto'
alias watch='watch --color'
alias cower='cower --color=auto'
alias watd='watch -d du --summarize'

## super
alias sudo='sudo '
alias sudosu='sudo su '

# storage
alias du='du -h'
alias dus='du --summarize'
alias duS='du -sk * | sort -n'
alias df='df -h'

# mod comms
alias diff='colordiff'             
alias free='free -mlt'
alias more='less'
alias nano='nano -w'
alias ping='ping -c 5'

# history

# online
alias openports='netstat --all --numeric --programs --inet --inet6'
alias pg='ps -Af | grep $1'
alias connections='sudo lsof -n -P -i +c 15'
alias arp-clear='ip -s -s neigh flush all'

# dev
alias pl='perl'

#beets
#alias beet='sudo beet'


# package
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
alias dpi='dpkg -i'
alias dps='dpkg -S'
alias dpc='dpkg -c'
alias dpl='dpkg -l'
alias dplf='dpkg -L'
alias dpr=' dpkg-reconfigure'
alias pkgi='pkg install'
alias pkgup='pkg upgrade'
alias pkgun='pkg uninstall'
alias pkgf='pkg f'
alias pkgr='pkg re'
alias pkgsh='pkg sh'
alias pkgs='pkg se'
alias pkgla='pkg list-a'
alias pkgli='pkg list-i'       

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

# todo
# logina
#alias pilocal='ssh pi@192.168.0.16'

#music












