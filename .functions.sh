#! /usr/bin/env bash
echo "Loaded functions..."

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

#####
# Completely get rid of all containers and images. SMASH EVERYTHING!
#####
function dockersmash {
  docker stop $(docker ps -a -q)
  docker rm $(docker ps -a -q)
  docker rmi $(docker images -q)
}