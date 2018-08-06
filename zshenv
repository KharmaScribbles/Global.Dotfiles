fpath=(~/.termux/zsh/functions/ $fpath)
autoload -Uz $fpath
############################################3
typeset -U path
path=(~/.dotfiles ~/.antigen $path)
export $path

ANTIGEN_LOG=~/.config/.antigen.log

#DOTFILES_REPO=~/Ter-dot-files
#export $DOTFILES_REPO
export EDITOR=micro
export BROWSER=lynx



