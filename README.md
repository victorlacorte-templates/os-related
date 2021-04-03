# Dotfiles

## Recipes

Deprecated:

https://docs.npmjs.com/resolving-eacces-permissions-errors-when-installing-packages-globally

## TODO

* https://github.com/VundleVim/Vundle.vim

* https://github.com/jessfraz/dotfiles

## Linux Mint fresh install

### Step by step

* cedilla (if US alt. intl. keyboard): `echo "GTK_IM_MODULE=cedilla" >> /etc/environment`

Reference: [1](https://community.linuxmint.com/tutorial/view/2407)

* `sudo apt update && sudo apt upgrade && reboot`

* VIM: vim-gtk3 since it has clipboard support and seems lighter than vim-gtk

* GIT

* [Firefox Developer Edition](https://www.mozilla.org/en-US/firefox/developer/)
Download, extract, move to /opt/firefox_dev/, and create a file

`mkdir -p ~/.local/share/applications && vim ~/.local/share/applications/firefox_dev.desktop`

to get a launcher with an icon:

```
[Desktop Entry]
Name=Firefox Developer
GenericName=Firefox Developer Edition
Exec=/opt/firefox_dev/firefox %u
Terminal=false
Icon=/opt/firefox_dev/browser/chrome/icons/default/default128.png
Type=Application
Categories=Application;Network;X-Developer;
Comment=Firefox Developer Edition Web Browser.
StartupWMClass=Firefox Developer Edition
```

Then,

`chmod +x ~/.local/share/applications/firefox_dev.desktop`
`cd ~/Desktop && ln -s ~/.local/share/applications/firefox_dev.desktop .`

Reference: [1](https://askubuntu.com/questions/548003/how-do-i-install-the-firefox-developer-edition)

* Bash local entry on ~/.bashrc:

```
if [ -f ~/.bash_local ]; then
    . ~/.bash_local
fi
```

* Download dotfiles

* VSCode

* [NVM](https://github.com/nvm-sh/nvm)

`curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash`

Remove the lines added to `~/.bashrc` since we want those lines in
`~/.bash_local`

`nvm install node`

* htop

* xclip

### Current issues

* (done-ish) cedilla -> US alt. intl. during installation


## Arch + i3

* https://github.com/Geigerkind/i3-wm-arch-linux-setup

* https://dzone.com/articles/arch-linux-installation-on-hw-with-i3-windows-mana

* https://wiki.archlinux.org/index.php/Dmenu

* https://wiki.archlinux.org/index.php/NetworkManager

* https://discourse.bigdaddylinux.com/t/archlinux-install-guide-2020-hardware-or-vm-video/424

* https://dzone.com/articles/arch-linux-installation-on-hw-with-i3-windows-mana

## Utilities

### [NVM](https://github.com/nvm-sh/nvm)

`nvm install node`

`nvm install-latest-npm`
