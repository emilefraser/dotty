#!/bin/bash
 
 
pkg install dcraw
pkg install gifsicle
pkg install gmic
pkg install graphicsmagick
pkg install graphicsmagick++
pkg install imagemagick
pkg install netpbm
pkg install openjpeg
pkg install openjpeg-tools
pkg install optipng

pkg install libjpeg-turbo-dev
LDFLAGS="-L/system/lib/" CFLAGS="-I/data/data/com.termux/files/usr/include/" pip install Pillow


