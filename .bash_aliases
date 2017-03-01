alias brwe="brew"
alias reload_profile="source ~/.bash_profile;echo \"Reloaded .bash_profile!\""
alias edit_profile="vim ~/.bash_profile"
alias lsl="ls -al"
alias sbash="s -n ~/.bash_profile ~/.profile ~/.bash_aliases ~/.zshrc"
alias cda="composer dump-autoload"
alias vag="vagrant"
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias dr="drush"
# Enable xdebug for CLI scripts
alias xon="export XDEBUG_CONFIG=\"profiler_enable=1\"; echo \"XDebug enabled for CLI!\""
alias xoff="export XDEBUG_CONFIG=\"profiler_enable=0\"; echo \"XDebug disabled for CLI!\""
alias unfuckdrupal="echo \"Clearing cache\";drush cc all -y;echo \"Running Cron\";drush cron -y"
alias unfuckfeatures="unfuckdrupal;drush features-revert-all --force -y;unfuckdrupal"
alias gi="git"
alias apache.restart='sudo apachectl restart'
alias byemux='tmux kill-server'
alias sym='php app/console'
alias nah='git reset --hard;git clean -df'
alias at="atom"
alias spec="phpspec"
alias jira="jiran"
alias gffs="git flow feature start"
alias j="jiran"
alias dco="docker-compose"
alias py="python"
# alias composer="php -n /usr/local/bin/composer.phar"
alias c="composer"
alias cpr="cp-remote"
alias ios="open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app"
alias mux="tmuxinator"
