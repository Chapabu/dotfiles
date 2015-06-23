alias brwe="brew"
alias reload_profile="source ~/.bash_profile;echo \"Reloaded .bash_profile!\""
alias edit_profile="vim ~/.bash_profile"
alias s="subl"
alias lsl="ls -al"
alias sbash="s -n ~/.bash_profile ~/.profile ~/.bash_aliases ~/.zshrc"
alias cda="composer dump-autoload"
alias vag="vagrant"
alias artisan="php artisan"
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias dr="drush"
alias art="php artisan"
alias drush6="/Users/MattC/.drush5/vendor/bin/drush"
alias svns="svn status"
alias dr6="drush6"
# Enable xdebug for CLI scripts
alias xon="export XDEBUG_CONFIG=\"profiler_enable=1\"; echo \"XDebug enabled for CLI!\""
alias xoff="export XDEBUG_CONFIG=\"profiler_enable=0\"; echo \"XDebug disabled for CLI!\""
alias unfuckdrupal="echo \"Clearing cache\";drush cc all -y;echo \"Running Cron\";drush cron -y"
alias unfuckfeatures="unfuckdrupal;drush features-revert-all --force -y;unfuckdrupal"
alias gi="git"
alias cassh="ssh-add ~/.ssh/id_rsa_cogapp"
alias apache.restart='sudo apachectl restart'
