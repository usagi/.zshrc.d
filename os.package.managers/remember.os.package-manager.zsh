remember.os.package-manager() {
 if [[ $1 == '' ]]; then
  zsh.log.info 'remember.os.package-manager' '👀Linux popular package-managers.'
  remember.os.package-manager apt
  remember.os.package-manager apt-get
  remember.os.package-manager dnf
  remember.os.package-manager emerge
  remember.os.package-manager pacman
  remember.os.package-manager portage
  remember.os.package-manager yast
  remember.os.package-manager yum
  remember.os.package-manager zypper

  zsh.log.info 'remember.os.package-manager' '👀BSD popular package-managers.'
  remember.os.package-manager pkg
  remember.os.package-manager portsnap

  zsh.log.info 'remember.os.package-manager' '👀Mac popular package-managers.'
  remember.os.package-manager port
  remember.os.package-manager brew

  zsh.log.info 'remember.os.package-manager' '👀Windows popular package-managers.'
  remember.os.package-manager chocolatey.exe
  remember.os.package-manager winget.exe
 else
  if type $1 >/dev/null; then
   local HAS='✅ Some('$(which $1)')'
  else
   local HAS='⛔ None'
  fi
  local M="$(printf '%-15s%s' $1 $HAS | sed 's/ /./g')"
  zsh.log.info 'remember.os.package-manager' $M
 fi
}

zsh.log.source.ready $0 'remember.os.package-manager'
