if type zypper >/dev/null; then
 alias zypper.install="sudo zypper in"
 alias zypper.remove="sudo zypper rm"
 alias zypper.search="zypper se"
 alias zypper.upgrade="sudo zypper up"
 alias zypper.autoclean="sudo zypper clean"
 alias zypper.autoremove="sudo zypper rm -u"

 zsh.log.source.ready $0 'zypper'
else
 zsh.log.source.not-found.trace $0 'zypper'
fi
