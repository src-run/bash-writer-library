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
# write out command status
#
function write_status()
{
  local index="${1}"
  local value="${2}"
  local color_fb="${3}"
  local color_bg="${4}"
  local style_bold="${5:-0}"
  local style_custom="${6:-x}"

  write_section_init "${index}"

  if [[ ${style_custom} -ne "x" ]]; then
    out_custom " ${value} " "fg:${color_fb} style:reverse bg:${color_bg} style:${style_custom}"
  elif [[ ${style_bold} -eq 0 ]]; then
    out_custom " ${value} " "fg:${color_fb} style:reverse bg:${color_bg} style:bold"
  else
    out_custom " ${value} " "fg:${color_fb} style:reverse bg:${color_bg}"
  fi

  write_section_stop
}

#
# write out command status okay
#
function write_status_okay()
{
  write_status "${1}" "${2:-okay}" green black
}

#
# write out command status warn
#
function write_status_warn()
{
  write_status "${1}" "${2:-warn}" red white
}

#
# write out command status skip
#
function write_status_skip()
{
  write_status "${1}" "${2:-skip}" blue black 1
}
