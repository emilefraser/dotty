#  ~/.aliases
# All aliasses used by bash for all ENVIRONMENTS

# Environment
alias reload='source ~/.bashrc'

#######################################
#             DIRECTORIES             #
#######################################

### directories and lists
alias gohome='cd $HOME'
alias home='cd $HOME'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias .......='cd ../../../../../..'

alias dir='dir --color=yes'
alias vdir='vdir --color=yes'

alias l='ls -CF --color=yes'
alias ls='ls --color=yes'
alias la='ls -la --color=yes'
alias ll='ls -l --color=yes'
alias lsh='ls -lh --color=yes'
alias lla='ls -lA --color=yes'
alias lsd='ls -d */ --color=yes'
alias lz='ll -rS --color=yes'
alias lx='ll -BX --color=yes'
alias lm='la | more color=yes'
alias l.='ls -d .* --color=yes'
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'''

alias p='pwd'
alias lsfiles='for f in *; do [[ -f "$f" ]] && ls -- "$f"; done' 

# Directory Event
alias watch='watch --color=yes'
alias cower='cower --color=yes'
alias watd='watch -d du --summarize'

# directory actions
alias rmdir='sudo rm -rf'
alias rf='sudo rm -rf'

#######################################
#        RIGHTS & PREMISIONS          #
#######################################

# rights
alias chmodall='sudo chmod 777 *'
alias chmodallr='sudo chmod -R 777 *'
alias chownall='sudo chown $USER *'

# superuser
#alias sudo='sudo '
alias ssudo='sudo su '

# Privileged access
#if [ $UID -ne 0 ]; then
#    alias sudo='sudo '
#    alias scat='sudo cat'
#    alias svim='sudo vim'
#    alias root='sudo su'
#    alias reboot='sudo reboot'
#    alias halt='sudo halt'
#    alias netcfg='sudo netcfg2'
#    fi            



######################################
#            Text Outputs            #
######################################

alias c='cat'
alias nano='nano -m'
alias grep='grep --color=yes'
alias egrep='egrep --color=yes'
alias fgrep='fgrep --color=yes'
alias diff='diff --color=auto'

### log
alias dmesg='dmesg --color=yes'

##alias c ='cat'
alias grep='grep --color=yes'
alias egrep='egrep --color=yes'
alias fgrep='fgrep --color=yes'
alias nano='nano -m'

#alias diff='colordiff'             
alias free='free -mlt'
alias more='less'
alias nano='nano -w'


###############################################
############# Terminal Executions #############
###############################################

alias cls='clear'
alias e='logout'
alias q='exit'
alias eb='exec bash'
alias t='touch'
alias top='htop'



###############################################
#               Git Commands                  #
###############################################

alias gcl='git clone'
alias gscl='git clone --depth=1'
alias gst='clear; git status -s'
alias gcm='git commit -a -m'
alias gre='git remote -v'
alias gpush='git push origin master'
alias gpull='clear; git pull origin master'


###############################################
#               Compressions                  #
###############################################

alias untar='tar -xzvf'

###############################################
################# Devlopment ##################
###############################################

# python
alias py2='python2'
alias py='python3'
alias py3='python3'
alias pip='pip'
alias pip2='pip2'
alias pip3='pip'
alias ipy='ipython'

# perl
alias pl='perl'

### go
alias gg='go get'

# create executable
alias exe='chmod a+x'

alias v='vim'

##################################################
################### Processes ####################
##################################################

### processes
alias psg='ps -ef | g '
alias j='jobs'
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'


##################################################
#                 History                        #
##################################################

### history
alias hi='history'
alias hiref='echo -n "Refreshing history... "; hcln; history -c; history -r; echo "done."'
alias hitop='history | awk "{ print $2 }" | sort | uniq -c | sort -rn | head'


##################################################
# Storage #####################
##################################################

### Storage Stats
alias du='du -h'
alias dus='du --summarize'
alias duS='du -sk * | sort -n'
alias df='df -h'


##################################################
# online ######################
##################################################

# online
alias arp-clear='ip -s -s neigh flush all'
alias connections='sudo lsof -n -P -i +c 15'
alias curllo='curl LO'
alias ip='ip -c'
alias openports='netstat --all --numeric --programs --inet --inet6'
alias pg='ps -Af | grep $1'
alias pilocal='ssh pi@192.168.0.16'
alias ping='ping -c 5'



######################################
#               DOCKER               #
######################################

# docker
alias doc='docker'

# container
alias doccon='docker container ls -a'
alias docconls='docker container ls'
alias docconla='docker container ls -a'
alias docconrm='docker container rm'
alias docconrmex='docker rm $(docker ps --all -q -f status=exited)'


#docker stop $1;docker rm $1


#,alias docconname='for ID in `docker ps | awk '{print $1}' | grep -v 'CONTAINER'`        do                                                                    docker inspect $ID | grep Name | head -1 | awk '{print $2}' | sed 's/,//g' | sed 's%/%%g' | sed 's/"//g'                                    done                                                          }'

#alias docnetip=echo "IP addresses of all named running containers"                                                                                         for DOC in `dnames-fn`                                                do                                                                        IP=`docker inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}} {{end}}' "$DOC"`                                             OUT+=$DOC'\t'$IP'\n'                                              done                                                                  echo -e $OUT | column -t   unset OUT}


# exec
alias docex='docker exec -it $1 ${2:bash}'
alias docrun='docker run -it $1 $2' 

# info
alias docin='docker inspect $1'
alias docps='docker ps --filter="label=$1" --format="{{.ID}}"'

# log
alias doclog='docker logs -f $1'

#function dcr-fn {                                                             docker-compose run $@                                         }
#                                                                      function dsr-fn {
#        docker stop $1;docker rm $1
#}                                                                     
#function drmc-fn {                                                           docker rm $(docker ps --all -q -f status=exited)
#}

#function drmid-fn {                                                          imgs=$(docker images -q -f dangling=true)                             [ ! -z "$imgs" ] && docker rmi "$imgs" || echo "no dangling images."
#}

#                                                                      function d-aws-cli-fn {                                                   docker run \
#           -e AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID \
#           -e AWS_DEFAULT_REGION=$AWS_DEFAULT_REGION \                           -e AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY \
 #          amazon/aws-cli:latest $1 $2 $3                             }

# volume
alias docvolls='docker volume ls'
alias docvolla='docker volume ls -a'

# network
alias docnetls='docker network ls'
alias docnetla='docker network ls -a'

# compose
alias doco='docker-compose $*'
alias docoup='docker compose up -d'
alias docodown='docker compose down'


######################################
#                   Other            #
######################################

# Package control
# apt
alias aptrepoadd='sudo add-apt-repository'


alias aptupdate='sudo apt-get -y update'
alias aptupgrade='sudo apt-get -y upgrade'
alias aptuu='sudo apt-get -y update && sudo apt-get -y upgrade'
alias aptuuc='sudo apt-get update && sudo apt-get upgrade && sudo apt-get clean'
alias aptclean='sudo apt-get clean && sudo apt-get autoclean && sudo apt-get dist-clean && sudo apt-get autoremove'
alias aptautoremove='sudo apt autoremove'
alias aptpurge='sudo apt-get purge'
alias aptcheck='sudo apt-get check'

alias aptlist='sudo apt list'
alias aptsearch='sudo apt search'
alias aptinstall='sudo apt-get -y install'
alias aptreinstall='sudo apt -y reinstall'
alias aptremove='sudo apt -y remove'
alias aptshow='sudo apt show'

# sudo dpkg
alias pkginstall='sudo dpkg --install'
alias pkgsearch='sudo dpkg --search'
alias pkgstatus='sudo dpkg --status'
alias pkgremove='sudo dpkg --remove'
alias pkgpurge='sudo dpkg --purge'
alias pkglist='sudo dpkg --list'
alias pkglistfiles='sudo dpkg --listfiles'
alias pkgaudit='sudo dpkg --audidt'
alias pkgverify='sudo dpkg --verify'
alias pkgconfigure='sudo dpkg --configure'

alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s* alert$//'\'')"'
