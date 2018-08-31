# dotfiles
dotfiles

## Install
```
git clone --separate-git-dir=~/.dot https://github.com/wulfmann/dotfiles ~
```

## Configure

```
git init --bare $HOME/.myconf
alias config='/usr/bin/git --git-dir=$HOME/.dot/ --work-tree=$HOME'
config config status.showUntrackedFiles no
```
