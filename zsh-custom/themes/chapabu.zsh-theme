# Tutorial here: http://code.tutsplus.com/tutorials/how-to-customize-your-command-prompt--net-24083

PROMPT='
$fg[yellow]$(get_pwd)$(put_spacing)$(git_prompt_info)
$fg[cyan]→ '

##
# FUNCTIONS
##

# Get the PWD, but switch to ~ if home is found.
function get_pwd() {
  echo "${PWD/$HOME/~}"
}

# Fake right alignment.
function put_spacing() {
  local git="$(git_prompt_info)"

  if [ ${#git} != 0 ]; then
      ((git=${#git} - 10))
  else
      git=0
  fi

  local termwidth
  # We're unlikely to be in both an SVN and a GIT repo, so to keep it clean I'm just going to all spacing adjustments here.
  (( termwidth = ${COLUMNS} - ${#$(get_pwd)} - ${git}))

  local spacing=""

  for i in {1..$termwidth}; do
      spacing="${spacing} "
  done

  echo $spacing
}

function git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_PREFIX$(current_branch)$ZSH_THEME_GIT_PROMPT_SUFFIX"
}

##
# VARIABLES
##

# Git prompt variables
ZSH_THEME_GIT_PROMPT_PREFIX="["
ZSH_THEME_GIT_PROMPT_SUFFIX="]$reset_color"
ZSH_THEME_GIT_PROMPT_DIRTY="$fg[red]💩  "
ZSH_THEME_GIT_PROMPT_CLEAN="$fg[green]🍺  "
