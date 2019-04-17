#!/usr/bin/bash
set -e
GOPATH=`pwd`
function gotoolcompilepkg() {
  local importpath=$1
  local pkg=$(basename $importpath)
  local out=$GOPATH/src/$importpath.a
  go tool compile -I $GOPATH/src -pack -o $out $GOPATH/src/$importpath/*.go
}

function gotoollinkpkg() {
  local importpath=$1
  local pkg=$(basename $importpath)
  local out=$GOPATH/src/$importpath/$pkg
  go tool link -o $out -L $GOPATH/src $GOPATH/src/$importpath.a
}

gotoolcompilepkg github.com/xiazemin/golink/unexported
gotoolcompilepkg github.com/xiazemin/golink/exported
gotoolcompilepkg github.com/xiazemin/golink
gotoollinkpkg github.com/xiazemin/golink

# sh src/github.com/xiazemin/golink/build.sh

# ./src/github.com/xiazemin/golink/golink
# private.hello()
