ZSH=$HOME/.oh-my-zsh
TERM=screen-256color

ZSH_THEME="mh"

commit-dotfiles() {
  cd ~/dotfiles
  git add . && git commit -m "$1" && git push origin master
}

alias spacemacs="emacs ~/.spacemacs"
alias g="git"
alias gst="git status -sb"
alias gc="git commit -v"
alias gb="git branch"
alias tmux="TERM=screen-256color-bce tmux"
alias json_format="python -mjson.tool"
alias zshrc="vim ~/.zshrc"
alias tmux.conf="emacs ~/.tmux.conf"
alias zshreload="source ~/.zshrc"
alias ohmyzsh="emacs ~/.oh-my-zsh"
alias vimrc="emacs ~/.vimrc"
alias md="mkdir"
alias celar="clear"
alias :q="exit"
alias tmux_init="tmux new -s dev"
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

function csv() {
	cat $1 | sed -e 's/,,/, ,/g' | column -s, -t
}

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(gitignore catimg)

source $ZSH/oh-my-zsh.sh
export GOPATH=/usr/local/go
export GOBIN=$GOPATH/bin
export PATH=/usr/local/share/npm/bin/:/Applications/Postgres93.app/Contents/MacOS/bin:/Users/Pepe/scala/bin/:$GOPATH/bin:/Library/Ruby/Gems/2.0.0/gems/foundation-1.0.4/bin:~/.cabal/bin:/usr/local/sbin:/Users/pepe/gradle/bin:/Users/pepe/.local/bin:~/powerline/scripts:$PATH
export PATH=/Users/pepe/java_home/apache-ant-1.9.7/bin:$PATH
export PATH=/Users/pepe/.conscript/bin:$PATH
export PATH=$JC_HOME/bin:$PATH
export TERM=xterm-256color
export ANDROID_HOME=/usr/local/opt/android-sdk


# java stuff
export JAVA_HOME=$(/usr/libexec/java_home)
export JC_HOME=~/java_home/java_card_kit-2_2_2
