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
alias yii_log="tail -f app/runtime/*.log"
alias emacs="emacs-24.3"
alias tmux_init="tmux new -s dev"
alias pvm="php-version"
alias symfony="./app/console"
alias snippets="vim ~/.vim/snippets"
alias mvim="gvim"
alias clera="clear"
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
alias gitconfig='vim ~/.gitconfig'
alias sshconfig='vim ~/.ssh/config'
alias hosts='sudo vim /etc/hosts'

# virtualenv aliases
# http://blog.doughellmann.com/2010/01/virtualenvwrapper-tips-and-tricks.html
alias v='workon'
alias v.deactivate='deactivate'
alias v.mk='mkvirtualenv --no-site-packages'
alias v.mk_withsitepackages='mkvirtualenv'
alias v.rm='rmvirtualenv'
alias v.switch='workon'
alias v.add2virtualenv='add2virtualenv'
alias v.cdsitepackages='cdsitepackages'
alias v.cd='cdvirtualenv'
alias v.lssitepackages='lssitepackages'

function gitignore() { curl http://www.gitignore.io/api/$@ ;}

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git gitignore)

source $ZSH/oh-my-zsh.sh
#source $(brew --prefix php-version)/php-version.sh && php-version 5

export GOPATH=/usr/local/go
export PATH=/usr/local/share/npm/bin/:/Applications/Postgres93.app/Contents/MacOS/bin:/Users/Pepe/scala/bin/:$GOPATH/bin:/Library/Ruby/Gems/2.0.0/gems/foundation-1.0.4/bin:~/.cabal/bin:$PATH
export TERM=xterm-256color
export SBT_OPTS="-XX:MaxPermSize=512m"
export JAVA_OPTS="$JAVA_OPTS -Xmx1024m -XX:MaxPermSize=1024m -Dfile.encoding=UTF8"

# virtualenv
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
