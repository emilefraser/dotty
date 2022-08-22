#!/bin/bash

DIR="$1"
echo "$DIR"

if [ -d "$DIR" ]; then
  echo "Directory exists"
fi

# Or to check if a directory doesnt exist:
if [ ! -d "$DIR" ]; then
  echo "Directory does not exists"
fi