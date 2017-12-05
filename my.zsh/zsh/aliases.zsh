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
# tunnes
alias tunnelpg='ssh -v -nNT -L 51013:10.120.5.101:5433  -L 51053:10.120.5.105:5433 -L 51063:10.120.5.106:5433 -L 51033:10.120.5.103:5433 -L 51023:10.120.5.102:5433 -L 51043:10.120.5.104:5433  $USER@10.120.1.150 -i $SSH_KEY'
alias tunnelrabbit_dev='ssh -v -nNT -L 30000:10.116.2.5:30000 $USER@10.116.1.150 -i $SSH_KEY'
alias tunnelrabbit_dev='ssh -v -nNT -L 30000:10.120.7.100:15672 $USER@10.120.1.150 -i $SSH_KEY'
alias tunnel_api='ssh -v -nNT -L 3201:data.neoway.com.br:32001 $USER@10.120.1.150 -i $SSH_KEY'
alias tunnel_ssh='ssh -v -nNT -L 8080:10.120.6.5:22 $USER@10.120.1.150 -i $SSH_KEY'
