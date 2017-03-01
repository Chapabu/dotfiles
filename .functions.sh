#! /usr/bin/env bash

#####
# Go to a project in the workspace.
#####
function ws {

  DIRECTORY="${HOME}/workspace/${1:-}"

  if [[ -d ${DIRECTORY} ]]; then
    cd "${DIRECTORY}" || exit
  else
    echo "${DIRECTORY} not found. Try one of these!"
    ls "${HOME}/workspace"
  fi;

}