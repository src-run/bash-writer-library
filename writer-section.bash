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
# write out whole section
#
function write_section()
{
  local section="${1}"
  local value="${2}"
  local style="${3:-none}"

  write_section_init "${section}"
  write_section_data "${value}" "white" "${style}"
  write_section_stop
}

#
# write out section name and beginning delimiter
#
function write_section_init()
{
  local section="${1}"

  out_custom "${section}=[" "fg:white style:bright"
}

#
# write out section contents
#
function write_section_data()
{
  local value="${1}"
  local color="${2:-white}"
  local style="${3:-none}"

  if [[ "${style}" == "none" ]]; then
    out_custom "${value}" "fg:${color}"
  else
    out_custom "${value}" "fg:${color} style:${style}"
  fi
}

#
# write out section ending delimiter
#
function write_section_stop()
{
  out_custom "] " "fg:white style:bright"
}
