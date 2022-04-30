remember.grep() {
 if [[ $1 == '' ]]; then
  zsh.log.info 'remember.grep' '👀grep and grep-like popular commands.'
  remember.grep grep
  remember.grep ack
  remember.grep ag
  remember.grep rg
  remember.grep pt
  remember.grep find.exe
 else
  if type $1 >/dev/null; then
   local HAS='✅ Some('$(which $1)')'
  else
   local HAS='⛔ None'
  fi
  local M="$(printf '%-9s%s' $1 $HAS | sed 's/ /./g')"
  zsh.log.info 'remember.grep' $M
 fi
}

zsh.log.source.ready $0 'remember.grep'
