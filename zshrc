# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
TERM=screen-256color

# Set name of the theme to load.

ZSH_THEME="cloud"

commit-dotfiles() {
  local path=`pwd`
  cd ~/dotfiles
  git add . && git commit -m "$1" && git push origin master
  cd $path
}

pullrequest() {
  local repo=`git remote -v | grep -m 1 "(push)" | sed -e "s/.*github.com[:/]\(.*\)\.git.*/\1/"`
  local branch=`git name-rev --name-only HEAD`
  open https://github.com/$repo/pull/new/$branch
}
alias pullrequest=pullrequest

# Example aliases
alias spacemacs="emacs ~/.spacemacs"
alias vim="echo \"use emacs, n00b!\""
alias mvim="echo \"use emacs, n00b!\""
alias g="git"
alias gst="git status -sb"
alias gc="git commit -v"
alias gb="git branch"
alias tmux="TERM=screen-256color-bce tmux"
alias json_format="python -mjson.tool"
alias zshrc="emacs ~/.zshrc"
alias tmux.conf="emacs ~/.tmux.conf"
alias zshreload="source ~/.zshrc"
alias ohmyzsh="emacs ~/.oh-my-zsh"
alias vimrc="emacs ~/.vimrc"
alias md="mkdir"
alias celar="clear"
alias :q="exit"
alias phpunit="phpunit --colors"
alias yii="php app/yiic"
alias yii_log="tail -f app/runtime/*.log"
alias tmux_init="tmux new -s dev"
alias pvm="php-version"
alias symfony="./app/console"
alias snippets="emacs ~/.emacs/snippets"
alias mvim="gvim"
alias clera="clear"
alias gitconfig='emacs ~/.gitconfig'
alias sshconfig='emacs ~/.ssh/config'
alias hosts='sudo emacs /etc/hosts'
alias agi='ag -i'
alias m='mvim'
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

function csv() {
	cat $1 | sed -e 's/,,/, ,/g' | column -s, -t
}

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(gitignore catimg)

source $ZSH/oh-my-zsh.sh
#source $(brew --prefix php-version)/php-version.sh && php-version 5

export GOPATH=/usr/local/go
export GOBIN=$GOPATH/bin
export PATH=/usr/local/share/npm/bin/:/Applications/Postgres93.app/Contents/MacOS/bin:/Users/Pepe/scala/bin/:$GOPATH/bin:/Library/Ruby/Gems/2.0.0/gems/foundation-1.0.4/bin:~/.cabal/bin:/usr/local/sbin:/Users/pepe/gradle/bin:/Users/pepe/.local/bin:$PATH
export TERM=xterm-256color
export JAVA_HOME=$(/usr/libexec/java_home)
export JAVA_OPTS="-Xms512m -Xmx512m "
export GRADLE_HOME=/Users/pepe/gradle

# virtualenv
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

# added by travis gem
[ -f /Users/pepe/.travis/travis.sh ] && source /Users/pepe/.travis/travis.sh

source /Users/pepe/z.sh
source $(brew --prefix nvm)/nvm.sh

export OS_AUTH_URL=https://lon.identity.api.rackspacecloud.com/v2.0/
export OS_USERNAME=packlink.docker
export OS_PASSWORD=Packlink.!2015
