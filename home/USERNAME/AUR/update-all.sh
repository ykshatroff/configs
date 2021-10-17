#!/bin/sh

curdir=`pwd`
for ff in *; do
  echo $ff
  cd $ff && git clean -fX && git pull --rebase && git prune || true
  cd $curdir
done
