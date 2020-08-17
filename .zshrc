# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/robertkrossa/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

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
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git iterm2 z yarn ruby postgres nvm gpg-agent yarn rails)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

alias ..="cd ..; pwd;"
alias ...="cd ../..; pwd;"
alias ....="cd ../../../; pwd;"
alias l="pwd; ls -al"
alias adbscreencap="adb shell screencap -p | perl -pe 's/\x0D\x0A/\x0A/g' > " 

# Git
alias branch_search="git branch | fzf | xargs git checkout"
alias gco="branch_search"
alias branch_delete="git branch | fzf | xargs git branch -d"
alias gs="git status"
alias gc="git commit"
alias gc!="git commit --amend"
alias grc="git rebase --continue"
alias gra="git rebase --abort"
alias gp="git push"
alias gp!="git push --force"

# Flexport
source ~/.flexport_zshrc
#Histroy & Backwards search settings
export HISTFILE="/Users/robertkrossa/.zsh_history"
export HISTFILESIZE=1000000000
export HISTSIZE=1000000
export SAVEHIST=1000000
setopt inc_append_history
setopt share_history
bindkey '^R' history-incremental-search-backward

#Z
. /usr/local/etc/profile.d/z.sh

# Tab Completion
autoload -U compinit && compinit

zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' '+l:|=* r:|=*'

prompt_context(){}

export PATH="/usr/local/git/bin:$PATH"
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.toolbox/bin:$PATH"
export PATH="$PATH:/usr/local/Cellar/node/9.5.0/bin"

#Ruby
if 
    which rbenv > /dev/null; then eval "$(rbenv init -)";
fi

#Node/NPM Configuration 

export NPM_PACKAGES=/Users/robertkrossa/.npm-packages
export NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
export PATH="$NPM_PACKAGES/bin:$PATH"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
export PATH=$PATH:/usr/local/bin  # MIDWAY PATH: Path changed for ssh
export SSH_AUTH_SOCK=$MSSH_AUTH_SOCK # MIDWAY SSH-AGENT: set as default


export NVM_DIR="$HOME/.nvm"
[[ -s "$(brew --prefix nvm)/nvm.sh" ]] && \. "$(brew --prefix nvm)/nvm.sh"  # This loads nvm
[[ -s "$NVM_DIR/bash_completion" ]] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
nvm use 12.16.0 # CHANGE ME IF WE CHANGE


# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export PATH="$PATH:$HOME/.rvm/bin"

#Github 
export GITHUB_USERNAME='robert.krossa'

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
