## ngrep for tail traffic
    sudo ngrep -d any src or dst github.com.br -pqtW byline and port 80

## list default iptables rules
    iptables -t nat -L -nv

## show service log end
    journalctl -u docker -e
