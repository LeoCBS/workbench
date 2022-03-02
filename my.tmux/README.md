# tmux shortcuts

## new session

    tmux new -s session-name
    
## attaching to an existing session

    tmux a -t session-name

## killing session

    tmux kill-session -t session-name

## Ctrl-a options:

* % (vertical split)
* " (horizontal split)
* s (list session)
* d (detach from the current session)
* % (create a horizontal pane)
* } (swap with next pane)
* { (swap with previous pane)
* o (toggle between panes)
* c (create new windows)
* number (navigate between window)
* , rename current window

[reference](https://danielmiessler.com/study/tmux/)
