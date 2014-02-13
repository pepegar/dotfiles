# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="dpoggi"

# Example aliases
alias zshrc="vim ~/.zshrc"
alias zshreload="source ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias vimrc="vim ~/.vimrc"
alias md="mkdir"
alias mvim="gvim"
alias celar="clear"
alias :q="exit"
alias phpunit="phpunit --color"
alias tmux="tmux -2"
alias yii="php app/yiic"
alias yii_log="tail -f app/runtime/application.log|perl -pe 's/^.*(\[warning\]|\[error\]).*$/\e[1;31m$&\e[0m/g'"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

export PATH=/usr/local/share/npm/bin/:$PATH
export GOPATH=/usr/local/go
setxkbmap -option caps:escape
