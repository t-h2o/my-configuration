# My shortcuts

[i3](https://i3wm.org/)
is a
[tiling window manager](https://en.wikipedia.org/wiki/Tiling_window_manager)
inspired by wmii that is primarily targeted at developers and advanced users.

The stated goals for i3 include clear documentation,
proper multi-monitor support, a tree structure for windows,
and different modes like those in vim. 

### How to use this config

1. Clone the repo and go inside it

```sh
git clone https://github.com/theo-grivel/my-configuration.git && cd my-configuration
```

2. Move `config` into `$HOME/.config/i3`

## Lock screen

| keys               | effect                 |
| :-                 | :-                     |
| `ctrl + w`         | i3 lock                |
| `ctrl + shift + w` | lock with xscreensaver |

## rofi

| keys        | effect      |
| :-          | :-          |
| `super + d` | launch rofi |

## Screenshot

| keys               | effect     |
| :-                 | :-         |
| `Ctrl+Shift+Print` | Screenshot |

## Brightness

| keys               | effect         |
| :-                 | :-             |
| `ctrl + o`         | Increase by 5% |
| `ctrl + shift + o` | Decrease by 5% |

## Workspaces

| keys| effect|
| :-| :-|
| ```ctrl + alt + left```	| move to left workspace	|
| ```ctrl + alt + right```	| move to right workspace	|
| ```super + 1```	| move to the workspace 1	|
| ```super + [n]```	| move to the workspace [n]	|


## Switching windows

| keys| effect|
| :-| :-|
| ```super + j```	| move to left window |
| ```super + k```	| move to down window |
| ```super + l```	| move to up window |
| ```super + ;```	| move to right window |


## dashboard

| keys| effect|
| :-| :-|
| ```super + shift + d```	| open dashboard |


## Resizing window

1. activate "resize" mode by `super + r`

2. Resize

| keys| effect|
| :-| :-|
| ```j``` or ```left```	|  shrink window |
| ```k``` or ```down```	|  grow height window |
| ```l``` or ```up```	|  shrink height window |
| ```;``` or ```right```	|  shrink window |

3. press `return` to quit.


## Moving window

| keys| effect|
| :-| :-|
| ```super + space```	|  toggle float/tilling mode |


### Tilling mode

| keys| effect|
| :-| :-|
| ```super + shift + j```	|  move window left |
| ```super + shift + k```	|  move window down |
| ```super + shift + l```	|  move window up |
| ```super + shift + ;```	|  move window right |

### Floating mode

_Try using your mouse in a mouseless window manager_
