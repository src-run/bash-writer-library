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
# internal variables
#
readonly _WRITER_VERSION="master"
readonly _WRITER_SELF_PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/"

#
# ensure required dependencies exist
#
if [ -z ${_BRIGHT_VERSION+x} ]; then
  echo 'Missing "bright" required dependency in "writer"!'
  exit 222
fi

#
# source includes
#
source "${_WRITER_SELF_PATH}writer-variables.bash"
source "${_WRITER_SELF_PATH}writer-stdio.bash"
source "${_WRITER_SELF_PATH}writer-status.bash"
source "${_WRITER_SELF_PATH}writer-section.bash"
source "${_WRITER_SELF_PATH}writer-definition.bash"
source "${_WRITER_SELF_PATH}writer-cli.bash"
source "${_WRITER_SELF_PATH}writer-program.bash"
source "${_WRITER_SELF_PATH}writer-action.bash"
