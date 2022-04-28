# Install oh my zsh

1. first, install zsh

2. execute install.sh or this...
```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

# Bonus

```~/.zshrc :```
```
PATH=$PATH:$HOME/usr/bin
```

```~/.oh-my-zsh/plugins/git/git.plugin.zsh```
```
.oh-my-zsh/plugins/git/git.plugin.zsh
```
```
alias   tree="tree -C --dirsfirst"
```

to open the current file in the defautl application
```
alias	open="xdg-open"
```
