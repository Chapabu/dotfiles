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

# SAUCE LABS
export SAUCE_USERNAME=cogapptech
export SAUCE_ACCESS_KEY=22bb96e6-44b3-4563-992a-c9367a5160c0
export SAUCE_TUNNEL_ID=mattc-bubble-tunnel

source $HOME/.nvm/nvm.sh

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export PATH="$PATH:/Applications/DevDesktop/drush"
