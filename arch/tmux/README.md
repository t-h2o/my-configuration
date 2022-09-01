# Tmux

> terminal multiplexer

Move into `~/.config/tmux/tmux.conf`

## My shortcuts

Tmux is a bit different:
To do a command, you need press `ctrl + a`.
And then, you can press a keyboard shortcut.

| keys      | effect                                      |
| :-:       | :-:                                         |
| ```[```   | enter in vi mode (v: to select, y: to copy) |
| ```q```   | Escape of vi mode                           |
| ```]```   | past                                        |
| ```c```   | open new window                             |
| ```[n]``` | go to window [n]                            |
| ```d```   | detach tmux (for going back: `tmux attach`) |

### Split screen

| keys    | effect           |
| :-      | :-               |
| ```\|``` | split vertical   |
| ```-``` | split horizontal |

### Move

| keys    | effect     |
| :-      | :-         |
| ```j``` | pane left  |
| ```k``` | pane down  |
| ```l``` | pane up    |
| ```;``` | pane right |

### Resizing

| keys    | effect            |
| :-      | :-                |
| ```J``` | resize-pane left  |
| ```K``` | resize-pane down  |
| ```L``` | resize-pane up    |
| ```:``` | resize-pane right |
