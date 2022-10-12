[ -d /mnt/c ] && alias nkc='cd /mnt/c && ls'
[ -d /mnt/d ] && alias nkd='cd /mnt/d && ls'
[ -d /mnt/e ] && alias nke='cd /mnt/e && ls'
[ -d /mnt/f ] && alias nkf='cd /mnt/f && ls'
[ -d /mnt/c/users/naveen ] && alias nk='cd /mnt/c/users/naveen'

alias ls="lsd"
alias ll="lsd -lahF"

# this is not real code:
for d in /mnt/[a-z]
do
  alias "ll$(basename ${d})"="cd $d && ll"
done