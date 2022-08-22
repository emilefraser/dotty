#!/bin/bash

# for all linux, macosx and freebsd distributions

Help() {
   # Display Help
   echo "Install function or dotty."
   echo
   echo "Syntax: install.sh [-gde|h|t|v|V]"
   echo "options:"
   echo "g     Print the GPL license notification."
   echo "h     Print this Help."
   echo "v     Verbose mode."
   echo "V     Print software version and exit."
   echo
}

InstallDot() {
  srcdir=./src
  tardir=~/

  foreach fil in env;
  do


  done
}

# Get the options
while getopts ":h:b:d" option; do
   case $option in
      h) Help
         exit;;
      a) AppendDot
         exit;;
      b) BackupDot
         InstallDot
         exit;;
      o) InstallDot
         exit;;
      \?) # incorrect option
         echo "Error: Invalid option"
         exit;;
   esac
done



#
#if [ -z "$1" ]
#then
#      echo "\$var is empty"
#
#else
#      echo "\$var is NOT empty"
#fi
