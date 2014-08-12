# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="dpoggi"

# Example aliases
alias zshrc="vim ~/.zshrc"
alias tmux.conf="vim ~/.tmux.conf"
alias zshreload="source ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias vimrc="vim ~/.vimrc"
alias md="mkdir"
alias celar="clear"
alias :q="exit"
alias phpunit="phpunit --colors"
alias yii="php app/yiic"
alias emacs="emacs-24.3"
alias tmux_init="tmux new -s dev"
alias pvm="php-version"
alias snippets="vim ~/.vim/snippets"

function gitignore() { curl http://www.gitignore.io/api/$@ ;}

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git gitignore)

source $ZSH/oh-my-zsh.sh
source $(brew --prefix php-version)/php-version.sh && php-version 5

export GOPATH=/usr/local/go
export PATH=/usr/local/share/npm/bin/:/Applications/Postgres93.app/Contents/MacOS/bin:/Users/Pepe/scala/bin/:$GOPATH/bin:$PATH
export TERM=xterm-256color
export SBT_OPTS="-XX:MaxPermSize=512m"
export JAVA_OPTS="$JAVA_OPTS -Xmx1024m -XX:MaxPermSize=1024m -Dfile.encoding=UTF8"
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
export VIRTUALENVWRAPPER_SCRIPT=/usr/local/bin/virtualenvwrapper.sh
source /usr/local/bin/virtualenvwrapper_lazy.sh

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
