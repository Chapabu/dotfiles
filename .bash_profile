# Aliases
alias reload_profile="source ~/.bash_profile;echo \"Reloaded .bash_profile!\""
alias edit_profile="vim ~/.bash_profile"
source ~/.bash_aliases

# CLI colours
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Path exports
export PATH="#{HOMEBREW_PREFIX}/bin:$PATH"
export PATH=vendor/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH="$HOME/.composer/vendor/bin:$PATH"
export PATH=/usr/local/bin:$PATH
export PATH="$HOME/Library/blackbox/bin:$PATH"

# Locale config
export LANG="en_GB"
export LANGUAGE=$LANG
export LC_ALL=$LANG

export EDITOR="/usr/local/bin/subl"

# http://bashrcgenerator.com/
export PS1="\[\e[00;37m\]\u@\h:[\[\e[0m\]\[\e[00;33m\]\w\[\e[0m\]\[\e[00;37m\]]\[\e[0m\] ð©  "

# Load in bash completion
if [ -f $(brew --prefix)/share/bash-completion/bash_completion ]; then
  . $(brew --prefix)/share/bash-completion/bash_completion
fi

if [ -f ~/.composer/vendor/drush/drush/drush.complete.sh ] ; then
    source ~/.composer/vendor/drush/drush/drush.complete.sh
fi

# Load in Drush aliaes
if [ -f ~/.drush_bashrc ] ; then
    source ~/.drush_bashrc
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export PATH="$PATH:/Applications/DevDesktop/drush"
