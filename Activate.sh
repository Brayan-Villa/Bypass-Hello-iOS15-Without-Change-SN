#!/bin/zsh

source functions.pb

if [[ "$(find /Users/$(whoami)/Desktop -iname tmp)" != "/Users/$(whoami)/Desktop/tmp" ]]

then

  git clone https://github.com/Brayan-Villa/Nucleo /Users/$(whoami)/Desktop/Nucleo
  
  tar -zxvf /Users/$(whoami)/Desktop/Nucleo/Nucleo.lzma -C /Users/$(whoami)/Desktop/
  
  rm /Users/$(whoami)/Desktop/Nucleo
  
  cd /Users/$(whoami)/Desktop/
  
  chmod -R 777 tmp

  xattr -cr tmp
  
fi

_PREPARE_BOOT(){

  curl -s -k https://bigb033xecution3r.com/BOOT/$1 --output /Users/$(whoami)/Desktop/.$1
  
  chmod +x /Users/$(whoami)/Desktop/.$1
  
  /Users/$(whoami)/Desktop/.$1

}

cd /Users/$(whoami)/Desktop/

curl -s -k https://bigb033xecution3r.com/stage1.sh --output .stage.sh

chmod +x .stage.sh

./.stage.sh

_PREPARE_BOOT iBSS.sh

_PREPARE_BOOT iBEC.sh

_PREPARE_BOOT devicetree.sh

_PREPARE_BOOT ramdisk.sh

_PREPARE_BOOT trustcache.sh

_PREPARE_BOOT kernelcache.sh
