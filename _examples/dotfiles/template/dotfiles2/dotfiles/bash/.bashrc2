PS1="# "
export TERM=xterm-256color
export LD_LIBRARY_PATH=/data/data/com.termux/files/usr/lib
export PATH=/data/data/com.termux/files/usr/bin:/data/data/com.termux/files/usr/bin/applets:/system/xbin:/system/bin

### DIRS ###
alias d="cd ~/Downloads"
alias gh="cd ~/gh"
alias sd="cd /sdcard"
alias sdx="cd /storage/7645-4B1C"

cls='clear'
alias e='logout'
alias gcl='git clone' 
alias j='jobs'
alias nano='nano -m' # Touch Support in nano
alias p='pwd'
alias q='exit'
alias rf='rm -rf'

alias ls='ls --color'
alias la='ls -a --color'
alias lla='ls -la --color'
alias lsh='ls -lh --color'
alias lsd='ls -d */'

# PYTHON
alias py2="python2"
alias py="python3"
alias py3="python3"
alias pip="pip"
alias pip2="pip2"
alias pip3="pip"

alias dmesg='dmesg --color=auto'

alias c="cat"

# GREP
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

alias ip='ip -c'

alias findt='find ./* -name "*~"; find ./* -name "\#*"'
alias ftr='find ./* -name "*~" | xargs rm -rfv; find ./* -name "\#*" | xargs rm -rfv'

# ps
alias psg='ps -ef | grep '

# history
alias hi="history"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias .......="cd ../../../../../.." 

alias du='du -h'
alias dus='du --summarize'
alias duS='du -sk * | sort -n'
alias watd='watch -d du --summarize'
alias df='df -h'

# autocorrects cd misspellings, 'cd /sur/src/linus' >> 'cd /usr/src/linux'
shopt -s cdspell

### Functions ###
chs(){
  sudo chmod 777 $1 $2
}

### Extract Archives ###
extract () {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2) tar xjvf $1 ;;
      *.tar.gz) tar xzvf $1 ;;
      *.bz2) bzip2 -d $1 ;;
      *.rar) unrar2dir $1 ;;
      *.gz) gunzip $1 ;;
      *.tar) tar xf $1 ;;
      *.tbz2) tar xjf $1 ;;
      *.tgz) tar xzf $1 ;;
      *.zip) unzip2dir $1 ;;
      *.Z) uncompress $1 ;;
      *.7z) 7z x $1 ;;
      *.ace) unace x $1 ;;
      *) echo "'$1' cannot be extracted via extract()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

### Bash Completion ###
if [ -f /etc/bash_completion ]; then
  . /etc/bash_completion
fi


