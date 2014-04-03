# ZSH
source "$HOME/.dotfiles/zsh/prompt.zsh"
export PATH="$HOME/.dotfiles/bin:$PATH"

# completion
autoload -U compinit
compinit

# matches case insensitive for lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# pasting with tabs doesn't perform completion
zstyle ':completion:*' insert-tab pending

# makes color constants available
autoload -U colors
colors

# enable colored output from ls, etc
export CLICOLOR=true

# history settings
setopt histignoredups
HISTFILE="$HOME/.zsh_history"
HISTSIZE=4096
SAVEHIST=4096

# awesome cd movements from zshkit
setopt autocd autopushd pushdminus pushdsilent pushdtohome cdablevars
DIRSTACKSIZE=5

# Try to correct command line spelling
setopt correct correctall

# Enable extended globbing
setopt extendedglob

# Allow [ or ] whereever you want
unsetopt nomatch

# Hub
if which hub > /dev/null; then eval "$(hub alias -s)"; fi

# Homebrew
export HOMEBREW_ROOT="/usr/local"
export PATH="$HOMEBREW_ROOT/bin:$PATH"
export CFLAGS="-I/usr/local/include"
export LDFLAGS="-L/usr/local/lib"
export MANPATH="$HOMEBREW_ROOT/share/man:$MANPATH"

# OSX Helpers
alias lock="/System/Library/CoreServices/Menu\ Extras/user.menu/Contents/Resources/CGSession -suspend"
alias service="$HOMEBREW_ROOT/bin/brew services"

# use sublime as the visual editor
export VISUAL=subl
export EDITOR=$VISUAL

# Ruby
export BUNDLE_JOBS=4
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Relative bin
export PATH="bin:$PATH"
