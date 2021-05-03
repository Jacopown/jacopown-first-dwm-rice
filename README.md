# MY FIRST RICE

## ARCH INSTALLATION

Work in progress...
<!--//TODO add installation process-->

## ST INSTALLATION

1. Install [git](https://wiki.archlinux.org/index.php/Git), [wget](https://wiki.archlinux.org/index.php/Wget), [base-devel](https://archlinux.org/groups/x86_64/base-devel/), [neovim](https://wiki.archlinux.org/index.php/Neovim) and [libxft](https://archlinux.org/packages/extra/x86_64/libxft/) :

    ```zsh
    sudo pacman -Sy wget git base-devel neovim libxft
    ```

1. Download my [.xinit](https://wiki.archlinux.org/index.php/Xinit) file :

    ```zsh
    wget -P ~/ https://raw.githubusercontent.com/Jacopown/jacopown-first-dwm-rice/master/.xinitrc
    ```

1. Create a directory for [st](https://st.suckless.org/)...

    ```zsh
    mkdir ~/.suckless/ && cd $_
    ```

1. ...than download it...

    ```zsh
    git clone https://github.com/Jacopown/my-st-build.git && cd ./my-st-build
    ```

1. ...finally install it :

    ```zsh
    sudo make && sudo make clean install
    ```

1. OPTIONAL(changing colors, opacity and other preferences :
    1. Open st config...

        ```zsh
        sudo nvim ~/.suckless/my-st-build/config.def.h
        ```

        ...and modify settings as you want

    1. Enter st directory...

        ```zsh
        cd ~/.suckless/my-st-build
        ```

    1. ...make it clean...

        ```zsh
        sudo make clean && rm -f config.h
        ```

    1. ...and install it again :

        ```zsh
        sudo make && sudo make clean install
        ```

## DMENU INSTALLATION

1. Install [libxinerama](https://archlinux.org/packages/extra/x86_64/libxinerama/) :

    ```zsh
    sudo pacman -Sy libxinerama
    ```

1. Download [dmenu](https://tools.suckless.org/dmenu/)...

    ```zsh
    git -C ~/.suckless clone https://github.com/Jacopown/my-dmenu-build.git && cd ~/.suckless/dmenu
    ```

1. ...and install it :

    ```zsh
    sudo make && sudo make clean install 
    ```

## DWM INSTALLATION

1. Install [xwallpaper](https://archlinux.org/packages/community/x86_64/xwallpaper/), [firefox](https://wiki.archlinux.org/index.php/Firefox), [picom](https://wiki.archlinux.org/title/Picom), [xorg-server](https://wiki.archlinux.org/index.php/xorg) and [xorg-xinit](https://wiki.archlinux.org/index.php/xorg), [pywal](https://github.com/dylanaraps/pywal) :

    ```zsh
    sudo pacman -Sy xwallpaper firefox picom xorg-server xorg-xinit python-pywal
    ```

1. Download a wallpaper

1. Create a Wallpaper directory, put the wallpaper there and rename it "bg1.jpg" :

1. Generate color palette :

    ```zsh
    wal -i ~/Wallpapers/bg1.jpg
    ```

1. Download [dwm](https://dwm.suckless.org/)...

    ```zsh
    git -C ~/.suckless clone https://github.com/Jacopown/my-dwm-build.git && cd ~/.suckless/my-dwm-build
    ```

1. ...and install it :

    ```zsh
    sudo make && sudo make clean install
    ```

1. Set graphical session to start at login :

    ```zsh
    sudo echo startx > ~/.bash_profile
    ```

1. Logout and re-login or reboot for modifies to take place
1. OPTIONAL(changing colors, keybinds and other preferences)
    1. Open dwm configs...

        ```zsh
        sudo nvim ~/.suckless/my-dwm-build/config.def.h
        ```

        ...and modify settings as you want

    1. Enter dwm directory...

        ```zsh
        cd ~/.suckless/my-dwm-build
        ```

    1. ...make it clean...

        ```zsh
        sudo make clean && rm -f config.h
        ```

    1. ...and install it again :

        ```zsh
        sudo make && sudo make clean install
        ```

## ZSH AND OH MY ZSH INSTALL]

1. Install [zsh](https://wiki.archlinux.org/index.php/Zsh) and [zsh-completions](https://archlinux.org/packages/community/any/zsh-completions/) :

    ```zsh
    sudo pacman -Sy zsh zsh-completions
    ```

1. Execute zsh :

    ```zsh
    zsh
    ```

    This should autostart the configuration program, if not :

    ```zsh
    zsh /usr/share/zsh/functions/Newuser/zsh-newuser-install -f
    ```

    Type 0 to prevent the configuration program to pop up again.

1. Set zsh as your default terminal :

    ```zsh
    chsh -s $(which zsh)
    ```

1. Set graphical session to start at login with zsh :

    ```zsh
    echo startx > ~/.zprofile
    ```

1. Reboot.

1. Install [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh) :

    ```zsh
    sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    ```

1. Install plugins (feel to add yours) :

    ```zsh
    git -C ~/.oh-my-zsh/custom/plugins clone https://github.com/zdharma/fast-syntax-highlighting.git && git -C ~/.oh-my-zsh/custom/plugins clone https://github.com/zsh-users/zsh-autosuggestions
    ```

1. Make font's folder for [powerlevel10k](https://github.com/romkatv/powerlevel10k) theme :

    ```zsh
    sudo mkdir -p /usr/local/share/fonts/ttf/MesloNerdFontPatched
    ```

1. Install fonts :

    ```zsh
    sudo wget -P /usr/local/share/fonts/ttf/MesloNerdFontPatched https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf
    ```

    ```zsh
    sudo wget -P /usr/local/share/fonts/ttf/MesloNerdFontPatched https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf
    ```

    ```zsh
    sudo wget -P /usr/local/share/fonts/ttf/MesloNerdFontPatched https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf
    ```

    ```zsh
    sudo wget -P /usr/local/share/fonts/ttf/MesloNerdFontPatched https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf
    ```

    ```zsh
    fc-cache
    ```

1. Install zsh theme :

    ```zsh
    git -C ~/.oh-my-zsh/custom/themes clone https://github.com/romkatv/powerlevel10k.git
    ```

1. Download my .zshrc :

    ```zsh
    rm -rf ~/.zshrc && wget -P ~/ https://raw.githubusercontent.com/Jacopown/jacopown-first-dwm-rice/master/.zshrc && source ~/.zshrc
    ```

1. Download my zsh theme configuration file :

    ```zsh
    rm -rf ~/.p10k.zsh && sudo wget -P ~/ https://raw.githubusercontent.com/Jacopown/jacopown-first-dwm-rice/master/.p10k.zsh
    ```

1. Close and re-open terminal.

## PIPEWIRE INSTALLATION  

1. Install [pipewire](https://wiki.archlinux.org/index.php/PipeWire) and compatibility packages :

    ```zsh
    sudo pacman -Sy pipewire pipewire-docs pipewire-alsa pipewire-pulse pipewire-jack pipewire-media-session pamixerk
    ```

1. Enable pipewire :

    ```zsh
    systemctl --user enable pipewire
    ```

1.Reboot.

## YAY INSTALLATION (optional but highly recommended)

1. Install [yay](https://github.com/Jguer/yay) :

    ```zsh
    mkdir ~/temp && git -C ~/temp clone https://aur.archlinux.org/yay.git && cd ~/temp/yay && makepkg -si && rm -fr ~/temp
    ```

1. Reboot

## GTK THEME SETUP

1. Install [lxappearance](https://archlinux.org/packages/community/x86_64/lxappearance/) :

    ```zsh
    sudo pacman -Sy lxappearance
    ```

1. Install [gtk-theme-arc-gruvbox-git](https://github.com/cyrinux/arc-gruvbox-theme)

    ```zsh
    yay -Sy gtk-theme-arc-gruvbox-git
    ```

1. Set the new gtk theme :

    ```zsh
    lxappearance
    ```

## DROPBOX SYNC FOLDER SETUP (optional, yay installation needed)

1. install [dropbox](https://wiki.archlinux.org/index.php/dropbox) and [dropbox-cli](https://aur.archlinux.org/packages/dropbox-cli/) :

    ```zsh
    yay -S dropbox dropbox-cli
    ```

1. Enable dropbox start at login, uncomment dropbox line :

    ```zsh
    sudo nvim ~/.xinitrc
    ```

1. Start dropbox and check his status :

    ```zsh
    dropbox && dropbox-cli status
    ```

1. Some settings :

    ```zsh
    dropbox-cli autostart && dropbox-cli throttle unlimited unlimited
    ```

1. Check files sync status :

    ```zsh
    dropbox-cli ls
    ```

1. Choose files to exclude from syncing :

    ```zsh
    dropobox-cli exclude <file to be excluded>
    ```

1. Reboot.

## VSCODE INSTALLATION (optional, yay installation needed)

1. Install [gnome-keyring](https://wiki.archlinux.org/index.php/GNOME/Keyring) and [libsecret](https://wiki.gnome.org/Projects/Libsecret) :

    ```zsh
    sudo pacman -Sy gnome-keyring libsecret
    ```

1. Install [vscode](https://wiki.archlinux.org/index.php/Visual_Studio_Code) :

    ```zsh
    yay -Sy visual-studio-code-bin
    ```

1. Edit .xinitrc uncommenting vscode line :

    ```zsh
    sudo nvim ~/.xinitrc
    ```

1. Reboot.

## MY ADDITIONAL PACKAGES

|PACKAGE NAME|DESCRIPTION|
|    :-:     |    :-:    |
|[dunst](https://wiki.archlinux.org/index.php/Dunst)|Is a suckless notification system|
|[libnotify](https://wiki.archlinux.org/index.php/Desktop_notifications)|Allows desktop notifications|
|[flameshot](https://wiki.archlinux.org/index.php/Flameshot)|Used to take screenshots|
|[mpv](https://wiki.archlinux.org/index.php/Mpv)|Minimalist video player|
|[neofetch](https://github.com/dylanaraps/neofetch)|Used to display some system informations|
|[neovim](https://wiki.archlinux.org/index.php/Neovim)|Better version of vim|
|[sxiv](https://wiki.archlinux.org/index.php/Sxiv)|Is a minimalist image viewer|
|[xournalpp](https://github.com/xournalpp/xournalpp)|Program i use to take university notes|
|[xf86-input-wacom](https://wiki.archlinux.org/index.php/wacom_tablet)|For wacom tablet|
|[usbutils](https://archlinux.org/packages/core/x86_64/usbutils/)|Utility for usb|
|[sl](https://archlinux.org/packages/community/x86_64/sl/)|Really important to make the system work|
|[figlet](http://www.figlet.org/)|Really important to make the system work|
|[cbonsai](https://gitlab.com/jallbrit/cbonsai)|Really important to make the system work (AUR)|
|[mad-db](https://wiki.archlinux.org/index.php/man_page)| Lets you read man pages of programs|
|[spotify](https://github.com/Spotifyd/spotifyd)|Simply Spotify (AUR)|
|[ttf-fira-code](https://github.com/tonsky/FiraCode)|Font for vscode|
|[nerd-fonts-hermit](https://aur.archlinux.org/packages/nerd-fonts-hermit/)|System font|
|[ntfs-3g](https://wiki.archlinux.org/index.php/NTFS-3G)|Allows to mount NTFS partitions|
|[zathura](https://wiki.archlinux.org/index.php/zathura)|Document viewer|
|[zathura-pdf-mupdf](https://pwmt.org/projects/zathura-pdf-mupdf/)|Zathura plugin for PDF,EPUB and XPS filetype support |
