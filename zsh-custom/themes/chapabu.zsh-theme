# Tutorial here: http://code.tutsplus.com/tutorials/how-to-customize-your-command-prompt--net-24083

PROMPT='
$fg[cyan]%m: $fg[yellow][$(get_pwd)]$fg_bold[blue][$(rvm_prompt_info)]$(put_spacing)$(git_prompt_info)$(svn_prompt_info)
$reset_color→ '

##
# FUNCTIONS
##

# Get the PWD, but switch to ~ if home is found.
function get_pwd() {
  echo "${PWD/$HOME/~}"
}

function rvm_prompt_info {
    rbv=`rvm-prompt`
    rbv=${rbv#ruby-}
    [[ $rbv == *"@"* ]] || rbv="${rbv}@default"
    echo $rbv
}

# Fake right alignment.
function put_spacing() {
  local git="$(git_prompt_info)"

  if [ ${#git} != 0 ]; then
      ((git=${#git} - 10))
  else
      git=0
  fi

  local svn="$(svn_prompt_info)"

  if [ ${#svn} != 0 ]; then
      ((svn=${#svn} - 10))
  else
      svn=0
  fi

  local rvm="$(rvm_prompt_info)"

  if [ ${#rvm} != 0 ]; then
      ((rvm=${#rvm}))
  else
      svn=0
  fi

  local termwidth
  # We're unlikely to be in both an SVN and a GIT repo, so to keep it clean I'm just going to all spacing adjustments here.
  (( termwidth = ${COLUMNS} - 3 - ${#HOST} - 4 - ${#$(get_pwd)} - ${rvm} - ${git} - ${svn} ))

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

function svn_prompt_info() {
  if in_svn; then
    if [ "x$SVN_SHOW_BRANCH" = "xtrue" ]; then
      unset SVN_SHOW_BRANCH
      _DISPLAY=$(svn_get_branch_name)
    else
      _DISPLAY=$(svn_get_repo_name)
    fi

    echo "$(svn_dirty)$ZSH_THEME_SVN_PROMPT_PREFIX$(svn_get_branch_name)$ZSH_THEME_SVN_PROMPT_SUFFIX"
    unset _DISPLAY
  fi
}

##
# VARIABLES
##

# RVM prompt variables
ZSH_THEME_RVM_PROMPT="%n@%m %~ $(rvm_prompt_info)"

# Git prompt variables
ZSH_THEME_GIT_PROMPT_PREFIX="[git:"
ZSH_THEME_GIT_PROMPT_SUFFIX="]$reset_color"
ZSH_THEME_GIT_PROMPT_DIRTY="$fg[red]💩  "
ZSH_THEME_GIT_PROMPT_CLEAN="$fg[green]🍺  "

# SVN prompt variables
ZSH_THEME_SVN_PROMPT_PREFIX="[svn:"
ZSH_THEME_SVN_PROMPT_SUFFIX="]$reset_color"
ZSH_THEME_SVN_PROMPT_DIRTY="$fg[red]💩  "
ZSH_THEME_SVN_PROMPT_CLEAN="$fg[green]🍺  "
SVN_SHOW_BRANCH=false
