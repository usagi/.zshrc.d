remember.processor() {
 if [[ $1 == '' ]]; then
  zsh.log.info 'remember.processor' '👀Rust and related processors.'
  remember.processor rustup
  remember.processor cargo
  remember.processor rustc
  remember.processor wasm-pack
  zsh.log.info 'remember.processor' '👀C++ and related processors.'
  remember.processor g++
  remember.processor llvm-g++
  remember.processor ld
  remember.processor clang++
  remember.processor lld
  remember.processor mold
  remember.processor gprof
  zsh.log.info 'remember.processor' '👀Node.js and related processors.'
  remember.processor nvm
  remember.processor npm
  remember.processor yarn
  remember.processor node
  remember.processor nodejs
  zsh.log.info 'remember.processor' '👀Python and related processors.'
  remember.processor pip
  remember.processor python
  remember.processor python2
  remember.processor python3
  zsh.log.info 'remember.processor' '👀sh and related processors.'
  remember.processor sh
  remember.processor bash
  remember.processor zsh
 else
  if type $1 >/dev/null; then
   local HAS='✅ Some('$(realpath $1)'; '$($1 --version 2>/dev/null | head -n1)')'
  else
   local HAS='⛔ None'
  fi
  local M="$(printf '%-9s%s' $1 $HAS | sed 's/ /./g')"
  zsh.log.info 'remember.processor' $M
 fi
}

zsh.log.source.ready $0 'remember.processor'
