# Homebrew exports
if which brew &>/dev/null; then
  export SSL_CERT_FILE="$(brew --prefix curl-ca-bundle)/share/ca-bundle.crt"
  export PATH="/usr/local/bin:$PATH"
  export CFLAGS="-I/usr/local/include"
  export LDFLAGS="-L/usr/local/lib"
  export MANPATH="/usr/local/share/man:$MANPATH"
fi
