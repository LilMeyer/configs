Environment configuration
===

Warning: your `.vimrc` and `.config/awesome/rc.lua` files will be overwritten.
If you want additional sh configuration, place it in `.shrc/non-versioned.sh`.

### Prerequisites:
- [awesome](http://awesome.naquadah.org/)
- [git flow](https://github.com/nvie/gitflow)
- [json](https://github.com/zpoley/json-command) `sudo npm install -g json`
- scons sudo apt-get install scons
- [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)

### Some utilities :

```sh
sudo apt-get install scons xclip npm docker
sudo npm install -g json jshint
```


### To install:

```sh
make
```
Reload awesome:

```sh
Ctrl + Mod4 + R
```


Awesome
---
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
- [Bash git prompt](https://github.com/magicmonty/bash-git-prompt)
- [Centos OpenSSH](http://wiki.centos.org/HowTos/Network/SecuringSSH)
- [Ubuntu screenshot](https://awesome.naquadah.org/wiki/Screenshots)
