# ubuntu
# bashrc

export TERM=screen-256color

export DOTFILES=$HOME/.dotfiles

. ~/.bash_aliases
. $DOTFILES/bash/gitbashrc

# setup my bin
export PATH="$HOME/.dotfiles/bin:$PATH"

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# npm
export PATH=$HOME/.npm/bin:$PATH

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export NVM_DIR="/home/dougw/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

[[ -r $NVM_DIR/bash_completion ]] && . $NVM_DIR/bash_completion

# go path
export GOPATH=/home/dougw/Devel/goProjects
export PATH=$PATH:$GOPATH/bin
