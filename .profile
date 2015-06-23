# Fix some shitty SVN thing
export LC_ALL=C

# Path exports
export PATH="$HOME/.rvm/gems/ruby-2.1.2/bin:$PATH"
export PATH="#{HOMEBREW_PREFIX}/bin:$PATH"
export PATH=vendor/bin:$PATH
export PATH=/usr/local/sbin:$PATH
#export PATH="$(brew --prefix josegonzalez/php/php54)/bin:$PATH"
export PATH="$HOME/.composer/vendor/bin:$PATH"
export PATH=/usr/local/bin:$PATH
export PATH="$HOME/Library/blackbox/bin:$PATH"

# SVN config
export SVN_EDITOR="vim"
export LANG="en_GB"
export LANGUAGE=$LANG
export LC_ALL=$LANG

# Load in Drush aliaes
# if [ -f ~/.drush_bashrc ] ; then
#     source ~/.drush_bashrc
# fi

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
