#!/bin/bash

#id=${1}
echo Input value:
read id
printf "%x\n" $id | awk '{ print toupper ($0) }' | sed -E 's/.{8}/&-/g; s/-$//'

