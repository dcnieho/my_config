# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/dcnieho/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Cycle through history based on characters already typed on the line
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "$key[Up]" up-line-or-beginning-search
bindkey "$key[Down]" down-line-or-beginning-search

bindkey "^[" kill-whole-line

configPath=$(wslpath -u $(wslvar USERPROFILE))/".config"/"oh-my-posh"/"thewickedd.omp.json"
eval "$(oh-my-posh init zsh --config $configPath)"

alias ls=lsd