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
# write action start
#
function write_action_start()
{
  local message="$1 ... "
  shift

  write_prog_text "$message" $@
}

#
# wirte action result
#
function write_action_result()
{
  local result="${1:-okay}"
  local context="${2:-x}"
  shift; shift

  out_custom "[" "fg:white style:bright"
  out_custom " ${result^^} " "fg:black bg:blue style:reverse style:dim"
  out_custom "] " "fg:white style:bright"

  if [[ "$context" != "x" ]]; then
    out_custom "($(printf "$context" $@))" "style:dim"
  fi

  printf '\n'
}
