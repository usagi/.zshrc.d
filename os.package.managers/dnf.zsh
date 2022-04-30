if type dnf >/dev/null; then
 alias dnf.install="sudo dnf install"
 alias dnf.remove="sudo dnf remove"
 alias dnf.search="dnf search"
 alias dnf.upgrade="sudo dnf upgrade"
 alias dnf.autoclean="sudo dnf clean all"
 alias dnf.autoremove="sudo dnf autoremove"

 zsh.log.source.ready $0 'dnf'
else
 zsh.log.source.not-found.trace $0 'dnf'
fi
