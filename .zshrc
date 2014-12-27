# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="victor"

# Example aliases
alias zshconfig="subl ~/.zshrc"
alias ohmyzsh="subl ~/.oh-my-zsh"
# alias vi="vim"
alias vim="mvim"
alias ls="ls -w"

function wiki() {
  if [[ $1 == "stop" ]] ; then
    cd ~/Work/Source/code_collector/; bundle exec thin stop
  else
    cd ~/Work/Source/code_collector/; bundle exec thin start -d -p 4587
  fi
}

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
export UPDATE_ZSH_DAYS=30

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git git-flow common-aliases osx rails rake ruby rvm sublime vi-mode autojump colored-man brew-cask brew zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
# export
# Old PATH PATH=/usr/local/mysql/bin:/opt/local/bin:/opt/local/sbin:/Users/victor/.rvm/gems/ruby-1.8.7-p302/bin:/Users/victor/.rvm/gems/ruby-1.8.7-p302@global/bin:/Users/victor/.rvm/rubies/ruby-1.8.7-p302/bin:/Users/victor/.rvm/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin

# Add RVM to PATH for scripting. Read More:: https://coderwall.com/p/lovd-g
# Using ZSH5 http://stackoverflow.com/questions/7117184/brew-installation-for-zsh
# PATH=/usr/local/bin/zsh:/usr/local/mysql/bin:/opt/local/bin:/opt/local/sbin:$PATH:$HOME/.rvm/bin:/Users/victor/.rvm/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin
# export PATH=/usr/local/mysql/bin:/opt/local/bin:/opt/local/sbin:$PATH
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting. Read More:: https://coderwall.com/p/lovd-g

# http://episko.posterous.com/brew-zsh-git-and-rvm
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

bindkey -v
bindkey -M viins 'jj' vi-cmd-mode

# bindkey '^r' history-incremental-search-backward
# Search backwards and forwards with a pattern
bindkey -M vicmd '/' history-incremental-pattern-search-backward
bindkey -M vicmd '?' history-incremental-pattern-search-forward

# set up for insert mode too
bindkey -M viins '^R' history-incremental-pattern-search-backward
# bindkey -M viins '^F' history-incremental-pattern-search-forward

bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^h' backward-delete-char
bindkey '^d' delete-char
bindkey '^w' backward-kill-word
bindkey '^u' backward-kill-line
bindkey '^k' kill-line
# bindkey 'Alt + f' forward-word
# bindkey 'Alt + b' backward-word
bindkey '^f' forward-char
bindkey '^b' backward-char
bindkey '^a' beginning-of-line
bindkey '^e' end-of-line

# export LANG=zh_CN.UTF-8
# http://stackoverflow.com/questions/4975973/gem-update-unable-to-convert-xe7-to-utf-8-in-conversion-from-ascii-8bit-to-u
# https://github.com/helios-framework/helios/issues/22
export LC_CTYPE=en_US.UTF-8
