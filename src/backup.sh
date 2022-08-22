#!/bin/bash
#ls -abp -d .* | grep -v / | grep -v .old | grep -v .log | grep -v .json

files=$(find $HOME -maxdepth 1 -type f -name ".*")
echo "original"
echo $files
echo "\n"

files=grep -v / $files
echo "post grep /"
echo $files
echo "\n"




files=grep -v .old $files
echo "post grep old"
echo $files
echo "\n"



files=$files | grep -v .log
echo "post grep log"
echo $files
echo "\n"


files=$files | grep -v .json
echo "post grep .json"
echo $files
echo "\n"



for f in $files
do

cp $f ../backup

done
