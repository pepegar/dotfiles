ZSH=$HOME/.oh-my-zsh
TERM=screen-256color

ZSH_THEME="mh"

commit-dotfiles() {
  cd ~/dotfiles
  git add . && git commit -m "$1" && git push origin master
}

alias openssl="/usr/local/Cellar/openssl/1.0.2g/bin/openssl"
alias spacemacs="vim ~/.spacemacs"
alias g="git"
alias gst="git status -sb"
alias gc="git commit -v"
alias gb="git branch"
alias tmux="TERM=screen-256color-bce tmux"
alias json_format="python -mjson.tool"
alias zshrc="vim ~/.zshrc"
alias tmux.conf="vim ~/.tmux.conf"
alias zshreload="source ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias vimrc="vim ~/.vimrc"
alias md="mkdir"
alias celar="clear"
alias :q="exit"
alias tmux_init="tmux new -s dev"
alias clera="clear"
alias gitconfig='vim ~/.gitconfig'
alias sshconfig='vim ~/.ssh/config'
alias hosts='sudo vim /etc/hosts'
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

function csv() {
	cat $1 | sed -e 's/,,/, ,/g' | column -s, -t
}

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(gitignore catimg ssh-agent)

source $(brew --prefix)/etc/profile.d/z.sh

source $ZSH/oh-my-zsh.sh
export GOPATH=/usr/local/go
export GOBIN=$GOPATH/bin
export PATH=/usr/local/share/npm/bin/:/Applications/Postgres93.app/Contents/MacOS/bin:/Users/Pepe/scala/bin/:$GOPATH/bin:/Library/Ruby/Gems/2.0.0/gems/foundation-1.0.4/bin:~/.cabal/bin:/usr/local/sbin:/Users/pepe/gradle/bin:/Users/pepe/.local/bin:~/powerline/scripts:$PATH
export PATH=/Users/pepe/java_home/apache-ant-1.9.7/bin:$PATH
export PATH=/Users/pepe/.conscript/bin:$PATH
export PATH=$JC_HOME/bin:$PATH
export PATH="$HOME/.cask/bin:$PATH"
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export TERM=xterm-256color
export ANDROID_HOME=/usr/local/opt/android-sdk
export SBT_OPTS="-Xmx2G -XX:+UseConcMarkSweepGC -XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=2G -Xss2M  -Duser.timezone=GMT"
export WORKON_HOME=~/.envs

source /usr/local/bin/virtualenvwrapper.sh

# java stuff
export JAVA_HOME=$(/usr/libexec/java_home)
export JC_HOME=/Users/pepe/java_home/oracle_javacard_sdks/jc304_kit

# added by travis gem
[ -f /Users/pepe/.travis/travis.sh ] && source /Users/pepe/.travis/travis.sh
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

. /Users/pepe/.nix-profile/etc/profile.d/nix.sh