#!/usr/bin/env bash

function match_uppercase() {
  typeset -a data=("$@")
  # Write your code here
  #echo "${data[@]^^}"
  i=0
  for v in "${data[@]}"
  do
   if [[ "$v" =~ [A-Z] ]]
   then
    ((i++))
   fi
  done
  echo $i
}

my_array=("First" "Second" "third")
match_uppercase "${my_array[@]}"
exit 0