# Show history
if [ "$HIST_STAMPS" = "mm/dd/yyyy" ]
then
    alias history='fc -fl 1'
elif [ "$HIST_STAMPS" = "dd.mm.yyyy" ]
then
    alias history='fc -El 1'
elif [ "$HIST_STAMPS" = "yyyy-mm-dd" ]
then
    alias history='fc -il 1'
else
    alias history='fc -l 1'
fi

#Docker magic
## Kill all running containers.
alias dockerkillall='docker kill $(docker ps -q)'
## Delete all stopped containers.
alias dockerclean-stopped-containers='printf "\n>>> Deleting stopped containers\n\n" && docker rm $(docker ps -a -q)'
## Delete untagged images.
alias dockerclean-untagged-images='printf "\n>>> Deleting untagged images\n\n" && docker rmi -f $(docker images -q)'
## Delete orphaned volumes.
alias dockerclean-orphaned-volumes='printf "\n>>> Deleting orphaned volumes.\n\n" && docker volume rm $(docker volume ls -qf dangling=true)'
## Delete all stopped containers and untagged images.
alias dockerclean='dockerclean-stopped-containers || true && dockerclean-untagged-images || true && dockerclean-orphaned-volumes'

## remove orphans package
alias cleanorphans='sudo pacman -Rscn $(pacman -Qtdq)'

alias systemctl_failed='systemctl --failed'
alias logfiles='journalctl -p 3 -xb'
alias updatearch='sudo pacman -Syu'
alias gitemail='git config user.email "leocborgess@gmail.com"'
alias vi="vim"

SSH_KEY='/home/leonardo/.ssh/leonardo'
USER='leonardo.borges'
