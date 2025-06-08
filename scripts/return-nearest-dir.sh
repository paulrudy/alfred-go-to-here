#!/bin/zsh

if [[ -d $input_path ]]; then
  result="$input_path"
elif [[ -f $input_path ]]; then
  result="$(dirname "$input_path")"
fi
echo -n "$result"
