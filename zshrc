# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="dpoggi"

# Example aliases
alias zshconfig="vim ~/.zshrc"
alias zshreload="source ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias md="mkdir"
alias trac-serve="tracd -s -r --port 8000 --basic-auth='development,/Users/Pepe/Projects/trac/development/trac-development,admin' /Users/Pepe/Projects/trac/development"
alias celar="clear"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git django svn virtualenv virtualenvwrapper symfony2 python colorize)

source $ZSH/oh-my-zsh.sh
source /usr/local/Cellar/z/1.5/etc/profile.d/z.sh

export PATH=/usr/local/share/npm/bin/:$PATH
