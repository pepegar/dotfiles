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
alias celar="clear"
alias :q="exit"
alias phpunit="phpunit --colors"
alias yii="php app/yiic"
alias emacs="emacs-24.3"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git gitignore)

source $ZSH/oh-my-zsh.sh
source $(brew --prefix php-version)/php-version.sh && php-version 5

export PATH=/usr/local/share/npm/bin/:/Applications/Postgres93.app/Contents/MacOS/bin:/Users/Pepe/scala/bin/:$PATH
export GOPATH=/usr/local/go
export TERM=xterm-256color
