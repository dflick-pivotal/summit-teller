#!/bin/bash

COUNT=1000
if [ "$1" != '' ]
  then
    for ((i=0; i<$COUNT; i++)) ; do
      curl -k "$1"/random &
    done
  else
    echo "Please provide a route to fortune-ui."
fi
