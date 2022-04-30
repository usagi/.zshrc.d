if type ntpdate >/dev/null; then
 zsh.log.source.not-found.warn $0 'ntpdate'
else
 alias ntpdate.japan="sudo ntpdate 210.173.160.27"
 zsh.log.source.ready $0 'ntpdate.japan'
fi

if type hwclock >/dev/null; then
 zsh.log.source.not-found.warn $0 'hwclock'
else
 alias hwclock.systohc="sudo hwclock --systohc"
 zsh.log.source.ready $0 'hwclock.systohc'
fi

if type ntpdate >/dev/null; then
 zsh.log.source.not-found.warn $0 'ntpdate or hwclock'
else
 alias ntpdate.japan.hwclock.systohc="ntpdate.japan && hwclock"
 zsh.log.source.ready $0 'ntpdate.japan.hwclock.systohc'
fi
