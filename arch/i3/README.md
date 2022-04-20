# My shortcuts

[i3](https://i3wm.org/)
is a dynamic
[tiling window manager](https://en.wikipedia.org/wiki/Tiling_window_manager)
inspired by wmii that is primarily targeted at developers and advanced users.

The stated goals for i3 include clear documentation,
proper multi-monitor support, a tree structure for windows,
and different modes like in vim. 

### Use this config

move file config
```
mkdir -p $HOME/i3
cp ./Assets/config $HOME/i3/config
```

## Desktop

| keys| effect|
| :-:| :-:|
| ```ctrl + alt + left```	| move to left desktop	|
| ```ctrl + alt + right```	| move to right desktop	|
| ```super + 1```	| move to desktop 1	|
| ```super + [n]```	| move to desktop [n]	|


## switch Windows

| keys| effect|
| :-:| :-:|
| ```super + j```	| move to left window |
| ```super + k```	| move to down window |
| ```super + l```	| move to up window |
| ```super + ;```	| move to right window |


## dash board

| keys| effect|
| :-:| :-:|
| ```super + shift + d```	| open dash board |


## resize window

1. active mode "resize" by `super + r`

2. Resize

| keys| effect|
| :-:| :-:|
| ```j``` or ```left```	|  shrink window |
| ```k``` or ```down```	|  grow height window |
| ```l``` or ```up```	|  shrink height window |
| ```;``` or ```right```	|  shrink window |

3. press `return` to quit.


## Move window

| keys| effect|
| :-:| :-:|
| ```super + space```	|  toggle float/tilling mode |


### Tilling mode

| keys| effect|
| :-:| :-:|
| ```super + shift + j```	|  move window left |
| ```super + shift + k```	|  move window down |
| ```super + shift + l```	|  move window up |
| ```super + shift + ;```	|  move window right |

### Float mode

Use your mouse in the window manager mouse less
