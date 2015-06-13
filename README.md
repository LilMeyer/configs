Environment configuration
===

### Prerequisites:
- [awesome](http://awesome.naquadah.org/)
- [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
- [git flow](https://github.com/nvie/gitflow)
- [jsawk](https://github.com/micha/jsawk)

### To install:
```sh
make
```

```sh
cp .zshrc ~/
cp -r .shrc ~/
```

Git
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

Ubuntu
---
Take a screenshot
```sh
import -window root -quality 98 screenshot.png
```

Prevent screen from locking
```sh
gsettings set org.gnome.desktop.session idle-delay 0
```


Screenshot
---
![Screenshot](https://raw.githubusercontent.com/LilMeyer/configs/master/screenshot.png)

References
---
- [Ubuntu screenshot](https://awesome.naquadah.org/wiki/Screenshots)
- [Github authentication](https://developer.github.com/guides/using-ssh-agent-forwarding/#testing-ssh-agent-forwarding)
