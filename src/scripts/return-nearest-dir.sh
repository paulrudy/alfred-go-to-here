#!/bin/zsh --no-rcs

if [[ -f $input_path && $get_container == true ]]; then
  result="$(dirname "$input_path")"
else
  result="$input_path"
fi

echo -n "$result"
