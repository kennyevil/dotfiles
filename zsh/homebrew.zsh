# Homebrew exports
if which brew &>/dev/null; then
  export PATH="/usr/local/bin:$PATH"
  export CFLAGS="-I/usr/local/include"
  export LDFLAGS="-L/usr/local/lib"
  export MANPATH="/usr/local/share/man:$MANPATH"
fi
