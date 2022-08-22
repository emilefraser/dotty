# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

################################
#         SHELLOPT             #
################################

### SHELL OPTIONS ###
## http://wiki.bash-hackers.org/internals/shell_options
shopt -s cdspell
shopt -s dirspell
shopt -s histappend         # append history, not overwrite it
shopt -s checkwinsize       # check windowsize if neccessary
shopt -s lithist
shopt -s autocd
shopt -s extglob
shopt -s dotglob
shopt -s globstar
shopt -s nullglob
#shopt -o nounset

################################
#        SHELL SPECIFIC        #
################################

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

#   enforce UTF-8 locale
export LC_CTYPE="en_US.UTF-8"

#   indicate if last command returned an error exit code
_check_exit_code () {
    local code=$?
    if [[ $code -gt 0 && $code -lt 126 ]]; then
        echo "-bash: ${_col_rd}WARNING${_col_no}: last command terminated with error exit code ${_col_bl}${code}${_col_no}"
    fi
}
PROMPT_COMMAND="_check_exit_code"

#   customize editor/pager handling
export EDITOR=vim
export PAGER="less"
export PAGER_FLAGS="":


################################
#             PATH            #
################################

# path extentions handled in .profile


###############################
#           SOURCING           #
################################

# source bash aliasses
if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

# source functions
if [ -f ~/.functions ]; then
    . ~/.functions
fi


################################
#           HISTORY            #
################################

# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth # ignorrdups:ignorespace
HISTSIZE=1000
HISTFILESIZE=2000

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi


################################
#             STYLE            #
################################

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

if [[ -r ~/.dircolors ]]; then
    DIRCOLORS=~/.dircolors
    eval "$(dircolors -b $DIRCOLORS)"
fi

# dircolors
d=$HOME/.dir_colors
test -r $d && eval "$(dircolors $d)"

# enable color support of ls and also add handy aliases
# test -r ~/.dir_colors && eval $(dircolors ~/.dir_colors)



# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'


################################
#          COMPLETIONS         #
################################

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi


################################
#         PROMPT               #
################################

#clear
figlet -f small Pyromaniac


# load prompt provider 

# powerline
#if [ -f `which powerline-daemon` ]; then
#powerline-daemon -q
#    POWERLINE_BASH_CONTINUATION=1
#    POWERLINE_BASH_SELECT=1
#fi
#if [ -f /usr/local/lib/python3.8/dist-packages/powerline/bindings/bash/powerline.sh ]; then
#    source /usr/local/lib/python3.8/dist-packages/powerline/bindings/bash/powerline.sh
#fi

# trueline (user configs then main program)
#source ~/Shell/repos/trueline/trueline.sh
source ~/.config/trueline/nord-trueline.sh
source ~/.trueline

# pureline 
#if [ "$TERM" != "linux" ]; then
#    source ~/.config/pureline/pureline ~/.pureline.conf
#fi

################################
#          EXPORTS              #
################################

export LESS='-R'
export LESSOPEN='|~/.lessfilter %s'


eval "$(thefuck --alias)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

source <(kubectl completion bash)
complete -o default -F __start_kubectl k

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/home/pyromaniac/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)
