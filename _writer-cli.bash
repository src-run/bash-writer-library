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
function write_cli_option_header()
{
  out_custom "Options:" "style:bold"
  write_newline
}

#
# write out usage cli parameter and description
#
function write_cli_option()
{
  local parameter="${1}"
  local description="${2}"


  printf "\t%-7s- %s" ${parameter} "${description}"
  write_newline
}

#
# write out usage command information
#
function write_cli_description()
{
  local desciption="${1}"

  out_custom "Description:\n" "style:bold"
  printf "$(echo "${desciption}" | fold -w 80 | sed "s/^[ \t]*/\t/")"
  write_newline
  write_newline
}

#
# write out usage command information
#
function write_cli_commands()
{
  if [[ "${1:0:12}" == "description:" ]]; then
    out_custom "Description:\n" "style:bold"
    printf "$(echo "${1:12}" | fold -w 80 | sed "s/^[ \t]*/\t/")"
    write_newline
    write_newline

    shift
  fi

  out_custom "Usage:" "style:bold"
  write_newline
  printf "\t./%s" "${0##*/}"

  for parameter in ${@}; do
    out_custom " ${parameter}" "style:bold style:bright"
  done

  write_newline
  write_newline
}
