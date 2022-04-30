remember.monitor() {
 if [[ $1 == '' ]]; then
  zsh.log.info 'remember.monitor' '👀Process monitor tools.'
  remember.monitor top
  remember.monitor ctop
  remember.monitor glances
  remember.monitor gtop
  remember.monitor htop
  remember.monitor vtop
  remember.monitor cpustat
  zsh.log.info 'remember.monitor' '👀Network monitor tools.'
  remember.monitor iftop
  remember.monitor iptraf
  remember.monitor iptraf-ng
  remember.monitor nethogs
 else
  if type $1 >/dev/null; then
   local HAS='✅ Some('$(which $1)')'
  else
   local HAS='⛔ None'
  fi
  local M="$(printf '%-9s%s' $1 $HAS | sed 's/ /./g')"
  zsh.log.info 'remember.monitor' $M
 fi
}

zsh.log.source.ready $0 'remember.monitor'
