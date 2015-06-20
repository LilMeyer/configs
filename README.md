Environment configuration
===

Warning: your .vimrc, .zshrc and .config/awesome/rc.lua files will be overwritten.
If you want additional sh configuration, place it in .shrc/non-versioned.sh.

### Prerequisites:
- [awesome](http://awesome.naquadah.org/)
- [git flow](https://github.com/nvie/gitflow)
- [jsawk](https://github.com/micha/jsawk)
- [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)

### To install:

```sh
make
```

# Documentation

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
lsb_release -a
 ```

Take a screenshot
```sh
import -window root -quality 98 screenshot.png
```

Prevent screen from locking
```sh
gsettings set org.gnome.desktop.session idle-delay 0
```

All processes
```sh
top
```

## User management

List all groups [[*]](http://stackoverflow.com/questions/14059916/is-there-a-command-to-list-all-unix-group-names)
```sh
groups
cut -d: -f1 /etc/group
```

List all users [[*]](http://askubuntu.com/questions/410244/a-command-to-list-all-users-and-how-to-add-delete-modify-users)
```sh
cut -d: -f1 /etc/passwd
```

Add a new user
```sh
sudo adduser new_username
```


See which groups your linux user belongs to[[*]](http://www.howtogeek.com/howto/ubuntu/see-which-groups-your-linux-user-belongs-to/)
```sh
groups username
```

Change password [[*]](http://www.cyberciti.biz/faq/linux-set-change-password-how-to/)
```sh
passwd new_username
```

Remove a user, option r removes the user's home directory [[*]](http://www.cyberciti.biz/faq/linux-remove-user-command/)
```sh
userdel -r username
```


Centos
---
## OpenSSH
Restart ssh service [[*]](http://wiki.centos.org/HowTos/Network/SecuringSSH)
```sh
service sshd restart
```

Ssh mode verbose
```sh
ssh -vvv root@address.com
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

#### Xephyr
Installation
```sh
sudo apt-get install xserver-xephyr
```
Run
```sh
Xephyr -ac -br -noreset -screen 800x600 :1
```

```sh
Xephyr :1 -ac -br -noreset -screen 900x300 & DISPLAY=:1.0 awesome -c ~/.config/awesome/rc.test.lua &
```


Screenshot
---
![Screenshot](https://raw.githubusercontent.com/LilMeyer/configs/master/screenshot.png)

References
---
- [Awesome debugging](https://wiki.archlinux.org/index.php/Awesome#Debugging_rc.lua)
- [Awesome shortcuts](https://awesome.naquadah.org/doc/manpages/awesome.1.html)
- [Awesome volume and control display](https://awesome.naquadah.org/wiki/Volume_control_and_display)
- [Awesome Xephyr](https://awesome.naquadah.org/wiki/Using_Xephyr)
- [Centos OpenSSH](http://wiki.centos.org/HowTos/Network/SecuringSSH)
- [Github authentication](https://developer.github.com/guides/using-ssh-agent-forwarding/#testing-ssh-agent-forwarding)
- [Ubuntu screenshot](https://awesome.naquadah.org/wiki/Screenshots)
