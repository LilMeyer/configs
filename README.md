Environment configuration
===

Warning: your `.vimrc`, `.zshrc` and `.config/awesome/rc.lua` files will be overwritten.
If you want additional sh configuration, place it in `.shrc/non-versioned.sh`.

### Prerequisites:
- [awesome](http://awesome.naquadah.org/)
- [git flow](https://github.com/nvie/gitflow)
- [json](https://github.com/zpoley/json-command) `sudo npm install -g json`
- [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)

### To install:

```sh
make
```

Git
---
Display version
```sh
git --version
```

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

Checkout branch [[*]](http://stackoverflow.com/questions/1783405/checkout-remote-git-branch)
```sh
git fetch
git checkout branch_name
```
If multiple remotes
```sh
checkout -b branch_name remote-name/branch_name
```


Ubuntu
---
Display version
```sh
cat /etc/issue
```

Take a screenshot
```sh
import -window root -quality 98 screenshot.png
```

Prevent screen from locking
```sh
gsettings set org.gnome.desktop.session idle-delay 0
```

Create a symbolic link [[*]](https://en.wikipedia.org/wiki/Symbolic_link)
```sh
sudo ln -s /path/to/redis/redis-stable/src/redis-cli /usr/bin/redis-cli
```

Awesome
---
Display version
```sh
awesome -v
```
#### Changed shorcuts
Kill window (instead of Mod4 + Shift + c)
```sh
Mod4 + c
```

#### Take a screenshot
```sh
import -window root -quality 98 screenshot.png
```

### Sublime Text

#### Packages
- [Alignment](http://wbond.net/sublime_packages/alignment)
- [GitGutter](https://github.com/jisaacks/GitGutter)
- [SublimeCodeIntel](https://github.com/SublimeCodeIntel/SublimeCodeIntel)

#### Color Schemes
- [Itf.flat](http://itsthatguy.com/post/70191573560/sublime-text-theme-itg-flat)
- [One Dark](https://github.com/IceTimux/one-dark-sublime-text-3-color-scheme)

Screenshot
---
![Screenshot](https://raw.githubusercontent.com/LilMeyer/configs/master/screenshot.png)

References
---
- [Centos OpenSSH](http://wiki.centos.org/HowTos/Network/SecuringSSH)
- [Ubuntu screenshot](https://awesome.naquadah.org/wiki/Screenshots)
