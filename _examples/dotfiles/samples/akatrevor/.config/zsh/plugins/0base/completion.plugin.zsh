#!/bin/zsh

# Maybe
setopt completeinword nocompletealiases nolistbeep

zmodload -i zsh/complist

WORDCHARS=''

unsetopt menu_complete   # do not autoselect the first completion entry
unsetopt flowcontrol
setopt auto_menu         # show completion menu on successive tab press
setopt always_to_end

#
# Use caching so that commands like apt and dpkg complete are useable
#

zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path $ZSH_CACHE_DIR

#zstyle ':compinstall' filename "$ZDOTDIR/compinstallrc"

## should this be in keybindings?
bindkey -M menuselect '^o' accept-and-infer-next-history

# auto rehash
zstyle ':completion:*' rehash true
zstyle ':completion:*' auto-rehash true

zstyle ':completion:*' use-compctl true
zstyle ':completion:*' group-name ''
zstyle ':completion:*' verbose yes
zstyle ':completion:*' extra-verbose yes
zstyle ':completion:*' squeeze-slashes true
zstyle ':completion:*' file-sort modification
zstyle ':completion:*' ignore-parents pwd
zstyle ':completion:*' special-dirs true

zstyle ':completion:*' expand prefix suffix
#zstyle ':completion:*' match-original both
#zstyle ':completion:*' preserve-prefix '//[^/]##/'
#zstyle ':completion:*' max-errors 1
zstyle ':completion:*' max-errors 1 not-numeric

# menu if nb items > 2
zstyle ':completion:*' menu select=2
#zstyle ':completion:*' menu select=1
#zstyle ':completion:*' menu select=long

# disable named-directories autocompletion
#zstyle ':completion:*:*:cd:*' tag-order local-directories directory-stack path-directories
zstyle ':completion:*:cd:*' tag-order local-directories directory-stack path-directories
#zstyle ':completion:*:-tilde-:*' group-order 'named-directories' 'path-directories' 'expand'

## Adjust approx limits based upon size
#zstyle -e ':completion:*:approximate:*' max-errors 'reply=( $(( ($#PREFIX + $#SUFFIX) / 3 )) )'


##
## Completers
##

# list of completers to use
local -U completers=(
    #_list
    _expand
    _complete
    _ignored
    #_match
    _correct
    _approximate
    _prefix
)

zstyle ':completion:*' completer $completers

##
## matchers
##

## ignore case
#zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

#zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
#zstyle ':completion:*' matcher-list '' '+m:{[:lower:][:upper:]}={[:upper:][:lower:]}' '+m:{[:lower:]}={[:upper:]} r:|[._-]=* r:|=*' '+r:|[._-/]=** r:|=** l:|=*'
#zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
#zstyle ':completion:*' matcher-list 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'

# case sensitive
#zstyle ':completion:*' matcher-list 'r:|=*' 'l:|=* r:|=*'
# hyphen insensitive
#zstyle ':completion:*' matcher-list 'm:{a-zA-Z-_}={A-Za-z_-}' 'r:|=*' 'l:|=* r:|=*'
# hyphen and case sensitive
#zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'

##
## Wider scope completion conf
##

# ignore useless commands and functions
#zstyle ':completion:*:functions' ignored-patterns '(_*|pre(cmd|exec)|prompt_*)'

# completion sorting
#zstyle ':completion:*:*:-subscript-:*' tag-order indexes parameters

# smart editor completion
zstyle ':completion:*:(nano|vim|nvim|vi|emacs|e):*' ignored-patterns '*.(wav|mp3|flac|ogg|mp4|avi|mkv|webm|iso|dmg|so|o|a|bin|exe|dll|pcap|7z|zip|tar|gz|bz2|rar|deb|pkg|gzip|pdf|mobi|epub|png|jpeg|jpg|gif)'

# Don't complete uninteresting completions
zstyle ':completion:*:*:*:users' ignored-patterns \
        adm amanda apache at avahi avahi-autoipd beaglidx bin cacti canna \
        clamav daemon dbus distcache dnsmasq dovecot fax ftp games gdm \
        gkrellmd gopher hacluster haldaemon halt hsqldb ident junkbust kdm \
        ldap lp mail mailman mailnull man messagebus  mldonkey mysql nagios \
        named netdump news nfsnobody nobody nscd ntp nut nx obsrun openvpn \
        operator pcap polkitd postfix postgres privoxy pulse pvm quagga radvd \
        rpc rpcuser rpm rtkit scard shutdown squid sshd statd svn sync tftp \
        usbmux uucp vcsa wwwrun xfs '_*'

# ... unless we really want to.
zstyle '*' single-ignored show

##
## Narrow scope completion conf
##

#zstyle ':completion:*:*:cd:*:directory-stack' menu yes select

# Man
zstyle ':completion:*:manuals' separate-sections true
zstyle ':completion:*:manuals.(^1*)' insert-sections true

## history
#zstyle ':completion:*:history-words' stop yes
#zstyle ':completion:*:history-words' remove-all-dups yes
#zstyle ':completion:*:history-words' list true
#zstyle ':completion:*:history-words' menu yes

## ignore multiple entries.
#zstyle ':completion:*:(rm|kill|diff):*' ignore-line other
#zstyle ':completion:*:rm:*' file-patterns '*:all-files'

#zstyle ':completion:*' list-colors ''

#zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
#zstyle ':completion:*:kill:*' command 'ps -o pid,%cpu,tty,cputime,cmd'

#zstyle ':completion:*:processes' command 'ps -au$USER'
#zstyle ':completion:*:*:kill:*' menu yes select
#zstyle ':completion:*:kill:*' force-list always
#zstyle ':completion:*:*:killall:*' menu yes select
#zstyle ':completion:*:killall:*' force-list always

#zstyle ':completion:*:*:*:*:processes' command "ps -u $USER -o pid,user,comm -w -w"
#zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;34=0=01'

###generic completion with --help
#compdef _gnu_generic gcc
#compdef _gnu_generic gdb

##
## Formatting
##

zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

zstyle ':completion:*' prompt 'comp errors:%e>'
zstyle ':completion:*' list-prompt '%SAt %p (%l) %M matches: Hit TAB for more, or the character to insert%s'
zstyle ':completion:*' select-prompt '%SScrolling active: current selection at %p (%l)%s'

#zstyle ':completion:*' format ' %F{yellow}-- %d --%f'
zstyle ':completion:*' format ' %F{yellow}-- completing: %d --%f'
zstyle ':completion:*' auto-description ' %F{blue}-- %d --%f'

zstyle ':completion:*' group 'yes'
zstyle ':completion:*' description 'yes'
zstyle ':completion:*' auto-description '%F{blue}%d%f'

#zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*:matches' group 'yes'
zstyle ':completion:*:options' description 'yes'
zstyle ':completion:*:options' auto-description '%F{blue}%d%f'
zstyle ':completion:*:corrections' format ' %F{green}-- %d (errors: %e) --%f'
zstyle ':completion:*:descriptions' format ' %F{yellow}-- %d --%f'
zstyle ':completion:*:messages' format ' %F{purple} -- %d --%f'
zstyle ':completion:*:warnings' format ' %F{red}-- no matches found --%f'

##
## Completion waiting dots
##

expand-or-complete-with-dots() {
    # toggle line-wrapping off and back on again
    [[ -n "$terminfo[rmam]" && -n "$terminfo[smam]" ]] && echoti rmam
    print -Pn "%{%F{red}......%f%}"
    [[ -n "$terminfo[rmam]" && -n "$terminfo[smam]" ]] && echoti smam

    zle expand-or-complete
    zle redisplay
}
zle -N expand-or-complete-with-dots
bindkey "^I" expand-or-complete-with-dots

