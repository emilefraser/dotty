#!/bin/bash

cd $HOME
curl -LO https://gitlab.com/st42/termux-sudo/raw/master/sudo
cat $HOME/sudo > $PREFIX/bin/sudo
chmod 700 $PREFIX/bin/sudo
mv $HOME/sudo $HOME/dl/sudo