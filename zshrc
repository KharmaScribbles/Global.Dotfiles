# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100
SAVEHIST=10000
setopt appendhistory autocd extendedglob nomatch
# End of lines configured by zsh-newuser-install

[[ -s /home/KharmaScribbles/.autojump/etc/profile.d/autojump.sh ]] && source /home/KharmaScribbles/.autojump/etc/profile.d/autojump.sh
[[ -s "$HOME/.local/share/marker/marker.sh" ]] && source "$HOME/.local/share/marker/marker.sh"

ANTIGEN_PATH=~/.antigen
source ~/antigen.zsh

antigen use oh-my-zsh

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions

antigen bundle git
antigen bundle colorize
antigen bundle command-not-found
antigen bundle copydir
antigen bundle copyfile
antigen bundle docker-compose
antigen bundle docker
antigen bundle fastfile
antigen bundle git-prompt
antigen bundle github
antigen bundle gitignore
antigen bundle pip
antigen bundle systemadmin
antigen bundle systemd
antigen bundle virtualenv
antigen bundle zsh_reload
antigen bundle StackExchange/blackbox
antigen theme silky/noon.zsh-theme
antigen apply
#######################
source ~/.bash_aliases

autoload -Uz compinit promptinit
compinit -u
promptinit

# PATH
typeset -U path
path=(~/.local/bin ~/.rbenv/bin ~/dotfiles/bin "$path[@]")