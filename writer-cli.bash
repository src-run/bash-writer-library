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
# write out usage cli parameter and description
#
function write_cli_option()
{
  local parameter="${1}"
  local description="${2}"

  printf "\t%-7s %s" ${parameter}
  write_space
  out_custom "${description}" "style:bright"

  write_newline
}

#
# write out usage command information
#
function write_cli_commands()
{
  out_custom "Usage:\n\t./${0##*/}" "style:bold"

  for parameter in ${@}; do
    out_custom " [${parameter}]" "style:bold style:bright"
  done

  write_newline
  write_newline
}
