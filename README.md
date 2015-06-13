Environment configuration
===

### Prerequises:

### To install:
```sh
make
```

```sh
cp .zshrc ~/
cp -r .shrc ~/
```

GIT
---
Test authentication to github:
```sh
ssh -T git@github.com
```
Display line numbers when greping:
```sh
git config --global grep.lineNumber true
```
Change editor:
```sh
git config --global core.editor vim
```


gsettings set org.gnome.desktop.session idle-delay 0
will prevent your screen from locking and change that setting to never.
