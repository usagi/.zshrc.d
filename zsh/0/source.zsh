zsh.source() {
 if [ -d $1 ]; then
  zsh.log.trace '📂'$(realpath $1)'/' '↙️Push dir'
  pushd -q $1
  for n in $(find . -type f,d -name '*.zsh' -not -path $2'*' | sort); do
   zsh.source $n
  done
  popd -q
  zsh.log.trace '📁'$(realpath $1)'/' '↘️Pop dir'
 elif [ -f $1 ]; then
  zsh.log.trace '📰'$(realpath $1) '↙️Load'
  source $1
  zsh.log.trace '📰'$(realpath $1) '↘️OK'
 fi
}
