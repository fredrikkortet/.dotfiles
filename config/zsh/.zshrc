# Created by newuser for 5.8
eval "$(starship init zsh)"

setopt autocd # set auto cd


HISTSIZE=1000000
SAVEHIST=1000000
HISTFILE=~/.cache/zsh/history

autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots) # include hidden files

#load fast-syntax-highlighting
source /usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh 2>/dev/null
