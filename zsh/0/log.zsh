export USAGI_ZSH_LOG_LEVEL=${USAGI_ZSH_LOG_LEVEL-DEBUG}

zsh.log.set_level() {
 if [ $# != 0 ]; then
  export USAGI_ZSH_LOG_LEVEL=$1
 else
  eccho 'Usage: zsh.log.set_level {LEVEL}'
  eccho '     : {LEVEL} := OFF | ERROR | WARN | INFO | DEBUG | TRACE'
  eccho '     : The default {LEVEL} is DEBUG.'
 fi
}

zsh.log.get_level() {
 echo $USAGI_ZSH_LOG_LEVEL
}

zsh.log.error() { zsh.log ERROR $1 $2; }
zsh.log.warn() { zsh.log WARN $1 $2; }
zsh.log.info() { zsh.log INFO $1 $2; }
zsh.log.debug() { zsh.log DEBUG $1 $2; }
zsh.log.trace() { zsh.log TRACE $1 $2; }

zsh.log() {
 local P='\033['
 local C0=''
 local C1=$P'0m'
 local E0=''
 if [[ $1 == 'ERROR' ]]; then
  if [[ $USAGI_ZSH_LOG_LEVEL == 'OFF' ]]; then return; fi
  local C0=$P'1;31m'
  local E0='💥'
 elif [[ $1 == 'WARN' ]]; then
  if [[ $USAGI_ZSH_LOG_LEVEL == 'OFF' ]] || [[ $USAGI_ZSH_LOG_LEVEL == 'ERROR' ]]; then return; fi
  local C0=$P'1;33m'
  local E0='🚨'
 elif [[ $1 == 'INFO' ]]; then
  if [[ $USAGI_ZSH_LOG_LEVEL == 'OFF' ]] || [[ $USAGI_ZSH_LOG_LEVEL == 'ERROR' ]] || [[ $USAGI_ZSH_LOG_LEVEL == 'WARN' ]]; then return; fi
  local C0=$P'1;32m'
  local E0='💁'
 elif [[ $1 == 'DEBUG' ]]; then
  if [[ $USAGI_ZSH_LOG_LEVEL == 'OFF' ]] || [[ $USAGI_ZSH_LOG_LEVEL == 'ERROR' ]] || [[ $USAGI_ZSH_LOG_LEVEL == 'WARN' ]] || [[ $USAGI_ZSH_LOG_LEVEL == 'INFO' ]]; then return; fi
  local C0=$P'1;34m'
  local E0='🚧'
 elif [[ $1 == 'TRACE' ]]; then
  if [[ $USAGI_ZSH_LOG_LEVEL == 'OFF' ]] || [[ $USAGI_ZSH_LOG_LEVEL == 'ERROR' ]] || [[ $USAGI_ZSH_LOG_LEVEL == 'WARN' ]] || [[ $USAGI_ZSH_LOG_LEVEL == 'INFO' ]] || [[ $USAGI_ZSH_LOG_LEVEL == 'DEBUG' ]]; then return; fi
  local C0=$P'1;35m'
  local E0='🥷'
 fi
 printf '[%s%b%-5s%b from %s] %s\n' $E0 $C0 $1 $C1 $2 $3
}

zsh.log.source.not-found.warn() {
 zsh.log.warn '📰'$(realpath $1) $2' is not found.👀'
}

zsh.log.source.not-found.trace() {
 zsh.log.trace '📰'$(realpath $1) $2' is not found, but it is not a problem.👀'
}

zsh.log.source.ready() {
 zsh.log.info '📰'$(realpath $1) $2' is ready.🌟'
}
