# ~/.bashrc
#PS1="\[\033[1;35m\][\t] \[\033[1;33m\]p@t:\w $ \[\033[0;37m\]"

### EXPORTS ###
#export LD_LIBRARY_PATH=/system/lib64:/data/data/com.termux/files/usr/lib
#unset LD_PRELOAD
#export LD_PRELOAD=$PREFIX/lib/libtermux-exec.so
export EDITOR="$PREFIX/bin/micro.sh"
export S_BIN_PATH=$HOME/pscr
export PATH="$HOME/gh/s:$S_BIN_PATH:$PATH"


### PROMPT ###
#function _update_ps1() {
#    PS1=$(powerline-shell $?)
#}

#if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
#    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
#fi

export LESS='-R'
export LESSOPEN='|~/.lessfilter %s'

### SHELL OPTIONS ###
## http://wiki.bash-hackers.org/internals/shell_options
shopt -s cdspell
shopt -s dirspell
shopt -s histappend
shopt -s checkwinsize
shopt -s lithist
shopt -s autocd
shopt -s extglob
shopt -s dotglob
shopt -s globstar
shopt -s nullglob
shopt -o nounset

# try_catch
set -o pipefail
shopt -s expand_aliases
declare -ig __oo__insideTryCatch=0


### WELCOME SCREEN ###
clear
figlet -f small Pyromaniac


### HISTORY ###
HISTCONTROL=ignoredups:ignorespace
HISTSIZE=50
HISTFILESIZE=2000

if [[ -r ~/.dircolors ]]; then
    DIRCOLORS=~/.dircolors
    eval "$(dircolors -b $DIRCOLORS)"
fi


# Select SSL LIBRARY
PYCURL_SSL_LIBRARY=openssl


### FUNCTIONS ###
## Rights
function chs() {
  sudo chmod 777 $1 $2
}

## Directories
function mkcd () {
  mkdir -p "$@" && cd "$@"
}

## History
function top10() {
  history | awk '{a[$2]++ } END {
  for(i in a) {
    print a[i] " " i
    }
  }' | sort -rn | head;
}

## Storage
function dirsize() {
  du -shx * .[a-zA-Z0-9_]* 2> /dev/null |   egrep '^ *[0-9.]*[MG]' | sort -n > /tmp/list
    egrep '^ *[0-9.]*M' /tmp/list
    egrep '^ *[0-9.]*G' /tmp/list
    rm -Rf /tmp/list
}

## Info
function myip() {
    local ip=$(curl http://ifconfig.me/ip)
    echo "My IP:" $ip
}

function netinfo () {
    echo "--------------- Network Information ---------------"
    /system/bin/ifconfig | awk /'inet addr/ {print $2}'
    /system/bin/ifconfig | awk /'Bcast/ {print $3}'
    /system/bin/ifconfig | awk /'inet addr/ {print $4}'
    /system/bin/ifconfig | awk /'HWaddr/ {print $4,$5}'
    echo $(myip)
    echo "---------------------------------------------------"
}

## Find
function f() {
    find . -name "$1" 2>&1 | grep -v 'Permission denied'
}

## Process
function psa () {
    ps aux | grep $1
}


### Extract Archives ###
function extract {
 if [ -z "$1" ]; then
    # display usage if no parameters given
    echo "Usage: extract <path/file_name>.<zip|rar|bz2|gz|tar|tbz2|tgz|Z|7z|xz|ex|tar.bz2|tar.gz|tar.xz>"
    echo "       extract <path/file_name_1.ext> [path/file_name_2.ext] [path/file_name_3.ext]"
 else
    for n in "$@"
    do
      if [ -f "$n" ] ; then
          case "${n%,}" in
            *.cbt|*.tar.bz2|*.tar.gz|*.tar.xz|*.tbz2|*.tgz|*.txz|*.tar) 
                         tar xvf "$n"       ;;
            *.lzma)      unlzma ./"$n"      ;;
            *.bz2)       bunzip2 ./"$n"     ;;
            *.cbr|*.rar)       unrar x -ad ./"$n" ;;
            *.gz)        gunzip ./"$n"      ;;
            *.cbz|*.epub|*.zip)       unzip ./"$n"       ;;
            *.z)         uncompress ./"$n"  ;;
            *.7z|*.arj|*.cab|*.cb7|*.chm|*.deb|*.dmg|*.iso|*.lzh|*.msi|*.pkg|*.rpm|*.udf|*.wim|*.xar)
                         7z x ./"$n"        ;;
            *.xz)        unxz ./"$n"        ;;
            *.exe)       cabextract ./"$n"  ;;
            *.cpio)      cpio -id < ./"$n"  ;;
            *.cba|*.ace)      unace x ./"$n"      ;;
            *)
                         echo "extract: '$n' - unknown archive method"
                         return 1
                         ;;
          esac
      else
          echo "'$n' - file does not exist"
          return 1
      fi
    done
fi
}

function compress() {
  ftocompress="${1}"
  fcompressmethod="${2}"

  if [ "$fcompressmethod" -rq  "7z"]; then
    echo "7z todo"
  else 
    echo "tgz compression"
    tar -cvzf $ftocompress.tgz --owner=0 --group=0 $ftocompress
  fi
	
}

## backup
## 2 arguments
##  1-which level bu
function backup() {
  bulvl=-1
  bupath=/sdcard/Backup
   
  for f in $bupath/*.tgz; do
    fbulvl=$(echo "${f}" | cut -d "_" -f 2 | cut -f 1 -d '.')
    maxbulvl=$((fbulvl + 0))
  
   if [ "$maxbulvl" -gt "$bulvl" ]; then
      bulvl=$maxbulvl
   fi
  done
  
  bulvl=$((bulvl+1))
    
  if [ "$bulvl" -eq 0 ]; then
    echo "CREATING BASE (00) backup"
    bulvl=00
    cd $PREFIX
    #tar --create --listed-incremental=data.snar --verbose --verbose --file=data.tar data
    tar -cvzf $bupath/termux-l_00.tgz --listed-incremental $bupath/termux.snar --owner=0 --group=0 home usr 1 2> $bupath/l_00.log   
    cp "$bupath/termux.snar" "$bupath/termux-l_$bulvl.snar"
  else
    if [ "$bulvl" -le 9 ]; then 
      bulvl="0$bulvl"
    fi

    cd /data/data/com.termux/files
    echo "CREATING INCREMENTAL (${bulvl}) backup"
    
    tar -cvzf $bupath/termux-l_$bulvl.tgz --listed-incremental $bupath/termux.snar --owner=0 --group=0 home usr
    cp "$bupath/termux.snar" "$bupath/termux-l_$bulvl.snar"
  fi  

}

function restore() {
  echo "aa"
}


################################
#  Exceptions     #
################################

# if try-catch is nested, then set +e before so the parent handler doesn't catch us
alias try="[[ \$__oo__insideTryCatch -gt 0 ]] && set +e;
           __oo__insideTryCatch+=1; ( set -e;
           trap \"Exception.Capture \${LINENO}; \" ERR;"
alias catch=" ); Exception.Extract \$? || "

Exception.Capture() {
    local script="${BASH_SOURCE[1]#./}"

    if [[ ! -f /tmp/stored_exception_source ]]; then
        echo "$script" > /tmp/stored_exception_source
    fi
    if [[ ! -f /tmp/stored_exception_line ]]; then
        echo "$1" > /tmp/stored_exception_line
    fi
    return 0
}

Exception.Extract() {
    if [[ $__oo__insideTryCatch -gt 1 ]]
    then
        set -e
    fi

    __oo__insideTryCatch+=-1

    __EXCEPTION_CATCH__=( $(Exception.GetLastException) )

    local retVal=$1
    if [[ $retVal -gt 0 ]]
    then
        # BACKWARDS COMPATIBILE WAY:
        # export __EXCEPTION_SOURCE__="${__EXCEPTION_CATCH__[(${#__EXCEPTION_CATCH__[@]}-1)]}"
        # export __EXCEPTION_LINE__="${__EXCEPTION_CATCH__[(${#__EXCEPTION_CATCH__[@]}-2)]}"
        export __EXCEPTION_SOURCE__="${__EXCEPTION_CATCH__[-1]}"
        export __EXCEPTION_LINE__="${__EXCEPTION_CATCH__[-2]}"
        export __EXCEPTION__="${__EXCEPTION_CATCH__[@]:0:(${#__EXCEPTION_CATCH__[@]} - 2)}"
        return 1 # so that we may continue with a "catch"
    fi
}

Exception.GetLastException() {
    if [[ -f /tmp/stored_exception ]] && [[ -f /tmp/stored_exception_line ]] && [[ -f /tmp/stored_exception_source ]]
    then
        cat /tmp/stored_exception
        cat /tmp/stored_exception_line
        cat /tmp/stored_exception_source
    else
        echo -e " \n${BASH_LINENO[1]}\n${BASH_SOURCE[2]#./}"
    fi

    rm -f /tmp/stored_exception /tmp/stored_exception_line /tmp/stored_exception_source
    return 0
}

################################
 #  Completions & Aliasses     #
################################

# Alias definitions.
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

### Bash Completion ###
#if [ -f /etc/bash_completion ]; then
## enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# dircolors
d=$HOME/.dir_colors
test -r $d && eval "$(dircolors $d)"

#if [ -f $PREFIX/etc/bash_completion.d ]; then
#   . $PREFIX/etc/bash_completion.d/git-completion.bash
#   . $PREFIX/etc/bash_completion.d/beet.bash-completion
#   . $PREFIX/etc/bash_completion.d/youtube-dl.bash-completion
#   . $PREFIX/etc/bash_completion.d/git-prompt.sh
#fi



# beets
#if [ -f ~/.beet ]; then
#   . ~/.beet
#fi
#eval "$(beet completion)"

################################
#  TMUX SESSION CONFIGURATION  #
################################

if [[ -n $TMUX ]]; then
    if [[ -f .tmux-session-name ]]; then
        tmux_session_name=$(cat .tmux-session-name)
    else
        tmux_session_name="${PWD##*/}"
    fi
    if [[ -d ~/.virtualenvs/"$tmux_session_name" ]]; then
        workonthis
    fi
    if [[ -f ~/.tmux-shells/"$tmux_session_name" ]]; then
        source ~/.tmux-shells/"$tmux_session_name"
    fi
fi