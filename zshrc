source ~/.zsh/prompt.zsh
source ~/.zsh/homebrew.zsh

# load our own completion functions
fpath=(~/.zsh/completion $fpath)

# completion
autoload -U compinit
compinit

# matches case insensitive for lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# pasting with tabs doesn't perform completion
zstyle ':completion:*' insert-tab pending

# load custom executable functions
for function in ~/.zsh/functions/*; do
  source $function
done

# makes color constants available
autoload -U colors
colors

# enable colored output from ls, etc
export CLICOLOR=1

# history settings
setopt histignoredups
HISTFILE=~/.zsh_history
HISTSIZE=4096
SAVEHIST=4096

# awesome cd movements from zshkit
setopt autocd autopushd pushdminus pushdsilent pushdtohome cdablevars
DIRSTACKSIZE=5

# Enable extended globbing
setopt extendedglob

# Allow [ or ] whereever you want
unsetopt nomatch

# handy keybindings
bindkey "^A" beginning-of-line
bindkey "^E" end-of-line
bindkey "^R" history-incremental-search-backward
bindkey "^P" history-search-backward
bindkey "^Y" accept-and-hold
bindkey "^N" insert-last-word
bindkey -s "^T" "^[Isudo ^[A" # "t" for "toughguy"

source ~/.zsh/aliases.zsh

# use subl as the visual editor
export VISUAL=subl
export EDITOR=$VISUAL
export PATH="bin:$HOME/.bin:$PATH"

# load hub within git
if which hub > /dev/null; then
  eval "$(hub alias -s)"
fi

# load rbenv if available
if which rbenv > /dev/null; then
  export BUNDLE_JOBS=4
  eval "$(rbenv init -)"
fi

# Local config
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local
