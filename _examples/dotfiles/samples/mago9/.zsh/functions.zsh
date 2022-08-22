#Custom Functions

random-string()
{
  cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w ${1:-32} | head -n 1
}

_gen_deploy_format_string() {
  echo "<a href=\"https://github.com/flocasts/puppet/commit/%h\" style='font-family:\"Courier new\"; color:red; font-weight:bold; text-decoration:none'>%h</a> %s <span style=\"color:green\">(%cr)</span> &lt;<span style=\"color:blue; font-weight:bold;\">%an</span>&gt;<br />"
}
_gen_deploy_html_output() {
  (
    origin="origin"
    cd $2
    git fetch $origin
    format=`_gen_deploy_format_string`
    output=`git log --no-merges $origin/master..$origin/staging --pretty=format:"$format" --abbrev-commit`
    if [ -n "$output" ]; then
        echo "<b style=\"font-size:16px;\">$3:</b><br /> <div class=\"anchor\"> <br />" >> $1
        echo $output >> $file
        echo "</div><br /><br />" >> $file
    fi
  )
}
# Generate the html output for this repo's deploy commits.
# Change "origin" to upstream or whatever if you're forking
gen_deploy_email () {
  if [ -z $1 ]
  then
    echo "Usage: gen_deploy_email /path/to/repo/root"
    return 1
  fi
  file="/tmp/deploys.html"
  rm -f $file
  echo "<div style=\"font-family:sans-serif; font-size:13px;\">" > $file
  _gen_deploy_html_output "$file" "$1/puppet" "Puppet"
  echo "</div>" >> $file
  open $file
}

# Change directory to current Finder directory
cdf() {
  target=`osascript -e 'tell application "Finder" to if (count of Finder windows) > 0 then get POSIX path of (target of front Finder window as text)'`
  if [ "$target" != "" ]; then
    cd "$target"; pwd
  else
    echo 'No Finder window found' >&2
  fi
}

# Get colors in manual pages
#man() {
#  env \
#  LESS_TERMCAP_mb=$(printf "\e[1;31m") \
#  LESS_TERMCAP_md=$(printf "\e[1;31m") \
#  LESS_TERMCAP_me=$(printf "\e[0m") \
#  LESS_TERMCAP_se=$(printf "\e[0m") \
#  LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
#  LESS_TERMCAP_ue=$(printf "\e[0m") \
#  LESS_TERMCAP_us=$(printf "\e[1;32m") \
#  man "$@"
#}

# Push dotfiles to github
dotfiles-push() {
  set -x
  yadm encrypt
  yadm commit -a -m "Latest file updates"
  yadm push
}

# Push Zprezto files to github
zprezto-push() {
  pushd ~/.zprezto
  git commit -a -m "Latest shell updates"
  git push
  popd
}

### FloSports
tf() {
  terraform get
  terraform $1 -var-file=./$2.tfvars -state=./state/$2.tfstate
}

tfp() {
  terraform get
  terraform plan -var-file=./$1.tfvars -state=./state/$1.tfstate | landscape
}

tf12() {
  terraform12 get
  terraform12 $1 -var-file=./$2.tfvars -state=./state/$2.tfstate
}

tfp12() {
  terraform12 get
  terraform12 plan -var-file=./$1.tfvars -state=./state/$1.tfstate | landscape
}

cdl() { cd $1; ls -lh }

# AWS Helpers
_hostname_from_instance() {
  PROFILE=$1
  INSTANCE_ID=$2
	echo $(aws ec2 --profile $PROFILE describe-instances --instance-ids "i-${2}" --query='Reservations[0].Instances[0].PublicDnsName' | tr -d '"')
}

flossh-prod() {
	ssh $(_hostname_from_instance "flosports-production" "$1")
}

flossh-stag() {
	ssh $(_hostname_from_instance "flosports-staging" "$1")
}
