#!/bin/bash
# prints the contents of the pos arg $@ via a shell-like loop


for i in $@; do
  echo $i
done
