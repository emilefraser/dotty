#!/bin/bash
 pkg install 
 grep \
 vim \
 joe \
 micro \
 nano \
 sed \
 vim \
 ne \
 neovim \
 abook -y

cd
go get gopkg.in/mikefarah/yq.v2
cd go/bin
chmod 777 yq.v2
cp yq.v2 $PREFIX/bin/yq


            
    