#!/usr/bin/env bash

d=$(dirname $(readlink -f $0))

if ! ps aux | grep evince_backward_search | grep $2 ; then
  $d/evince_backward_search "$1" "gvim --servername $2 --remote-silent '+%l<Enter>' %f" &

  evince "$1"

  kill %1
fi

