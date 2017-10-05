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
# write out space character
#
function write_space()
{
  echo -en " "
}

#
# write out newline character
#
function write_newline()
{
  echo -en "\n"
}

#
# write out error message and optionally exit
#
function write_error()
{
  local returns="${1:-0}"
  local message="${2:-An undefined error occurred!}"

  out_custom " ERROR " "fg:white bg:red style:bold"
  out_custom " ${message}...\n" "fg:white"

  if [[ ${returns} -ne 0 ]]; then
    exit ${returns}
  fi
}

#
# write out command header
#
function write_header()
{
  local header="${1}"

  out_custom " -- ${header^^} -- \n" "fg:magenta style:bold style:reverse"
}
