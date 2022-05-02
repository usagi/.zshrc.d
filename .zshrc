if [ -f $0 ]; then
 if $(readlink $(realpath $0)); then
  local P='📰'$(realpath $0)'♾️'$(realpath $0)
 else
  local P='📰'$(realpath $0)
 fi
else
 local P='⚓'$0
fi

source ~/.zshrc.d/zsh/0/__init__.zsh
zsh.log.info $P 'Initializing was succeeded; zsh.{log, source} were loadded.👍'

zsh.log.info $P '↙️Load(Root)'

zsh.source ~/.zshrc.d/zsh ./0
# zsh.source ~/.zshrc.d ./zsh
zsh.source ~/.zshrc.d/filesystem
zsh.source ~/.zshrc.d/display
zsh.source ~/.zshrc.d/shell
zsh.source ~/.zshrc.d/nvm.zsh

zsh.log.info $P '↘️Load(Root)'

# source ~/.zshrc.d/zsh/0/__last__.zsh
