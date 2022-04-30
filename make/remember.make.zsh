remember.make() {
 if [[ $1 == '' ]]; then
  zsh.log.info 'remember.make' '👀make and make-like build tools.'
  remember.make make
  remember.make cmake
  remember.make ninja
 else
  if type $1 >/dev/null; then
   local HAS='✅ Some('$(realpath $1)'; '$($1 --version 2>/dev/null | head -n1)')'
  else
   local HAS='⛔ None'
  fi
  local M="$(printf '%-9s%s' $1 $HAS | sed 's/ /./g')"
  zsh.log.info 'remember.make' $M
 fi
}

zsh.log.source.ready $0 'remember.make'
