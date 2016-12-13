# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="chapabu"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=$HOME/zsh_custom

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(gitfast brew composer history-substring-search)

# User configuration

export PATH="$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/mchapman/.composer/vendor/bin:/usr/local/sbin:node_modules/.bin:vendor/bin:#{HOMEBREW_PREFIX}/bin"
# export MANPATH="/usr/local/man:$MANPATH"

export PATH="/Users/mchapman/Scripts/bin:$PATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.bash_aliases
source ~/.private_aliases
source ~/.profile

autoload bashcompinit
bashcompinit -D
source $HOME/.composer/vendor/drush/drush/drush.complete.sh

# ZSH specific aliases
alias reload_profile="source ~/.zshrc;echo \"Reloaded .zshrc!\""
alias bower='noglob bower'

# Exports
export SVN_EDITOR="vim"

export EDITOR="/usr/local/bin/atom"
export DISABLE_AUTO_TITLE=true
export LANG="en_GB.UTF-8"
export LANGUAGE=$LANG
export LC_ALL=$LANG

fpath=(/usr/local/share/zsh-completions $fpath)

# The Fuck
eval $(thefuck --alias)

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
nvm alias default v6 > /dev/null

eval `/usr/libexec/path_helper -s`

# Automatically added by Platform.sh CLI installer
export PATH="/Users/mchapman/.platformsh/bin:$PATH"
. '/Users/mchapman/.platformsh/shell-config.rc' 2>/dev/null

# Drupal console.
source "$HOME/.console/console.rc" 2>/dev/null
