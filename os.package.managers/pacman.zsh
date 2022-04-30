if type pacman >/dev/null; then
 alias pacman.install="sudo pacman -S"
 alias pacman.remove="sudo pacman -Rs"
 alias pacman.search="pacman -Ss"
 alias pacman.upgrade="sudo pacman -Syu"
 alias pacman.autoclean="sudo pacman -Scc"
 alias pacman.autoremove="sudo pacman -Qdtq | pacman -Rs -"

 zsh.log.source.ready $0 'pacman'
else
 zsh.log.source.not-found.trace $0 'pacman'
fi
