#!/bin/bash

# suppress termuz startu
touch .hushlogin

# upgrade packages
pkg upgrade && pkg update

# setu termux storage
termux-setup-storage

 if [ ! -d ~/gh ]; then
    mkdir gh
 fi

 if [ ! -d ~/scr ]; then
     mkdir scr
 fi

if [ ! -d ~/cheat ]; then
     mkdir cheat
fi

if [ ! -d ~/phelp ]; then
    mkdir phelp
 fi

if [ ! -d ~/install ]; then
     mkdir install
 fi

 if [ ! -d ~/config ]; then
     mkdir config
 fi