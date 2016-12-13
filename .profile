# Fix some shitty SVN thing
export LC_ALL=C

# Path exports
export PATH="#{HOMEBREW_PREFIX}/bin:$PATH"
export PATH=vendor/bin:$PATH
export PATH=/usr/local/sbin:$PATH
#export PATH="$(brew --prefix josegonzalez/php/php54)/bin:$PATH"
export PATH="$HOME/.composer/vendor/bin:$PATH"
export PATH=/usr/local/bin:$PATH
export PATH="$HOME/Library/blackbox/bin:$PATH"
export PATH="$(brew --prefix homebrew/php/php56)/bin:$PATH"

# SVN config
export SVN_EDITOR="vim"
export LANG="en_GB"
export LANGUAGE=$LANG
export LC_ALL=$LANG

# Load in Drush aliaes
# if [ -f ~/.drush_bashrc ] ; then
#     source ~/.drush_bashrc
# fi

source $HOME/.nvm/nvm.sh
