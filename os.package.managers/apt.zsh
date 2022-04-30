if type apt >/dev/null; then
 alias apt.install="sudo apt install -y"
 alias apt.remove="sudo apt remove -y"
 alias apt.search="apt search"
 alias apt.upgrade="sudo apt update -y && sudo apt upgrade -y"
 alias apt.autoclean="sudo apt autoclean -y"
 alias apt.autoremove="sudo apt autoremove -y"

 zsh.log.source.ready $0 'apt'
else
 zsh.log.source.not-found.trace $0 'apt'
fi
