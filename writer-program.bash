#!/bin/bash

##
## This file is part of the `src-run/bash-writer-library` project.
##
## (c) https://github.com/src-run/bash-writer-library/graphs/contributors
##
## For the full copyright and license information, please view the LICENSE.md
## file that was distributed with this source code.
##

#
# write program text
#
function write_prog_text()
{
  local self_file="$(basename "${_SELF_FILE:-x}" ".bash")"
  local unix_time=$(date +%s)
  local nano_time=$(date +%N)
  local show_time="${unix_time:6}.${nano_time}"
  local message="${1}"
  shift

  if [[ "$self_file" != "x" ]]; then
    out_custom "$self_file=" "style:dim"
  fi

  out_custom "[$show_time] " "style:dim"

  printf "$message" $@
}

#
# write program line
#
function write_prog_line()
{
  printf '%s\n' "$(write_prog_text $@)"
}
