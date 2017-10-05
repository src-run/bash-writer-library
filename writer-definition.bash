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
# write out definition name and value
#
function write_definition()
{
  local index="${1}"
  local value="${2}"

  write_section_init "${index}"
  write_section_data "${value}"
  write_section_stop

  write_newline
}
