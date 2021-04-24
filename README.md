# DWM PASTEL RICE

## ARCH INSTALLATION

Work in progress...
<!--//TODO add installation process-->

## ST INSTALLATION

1. Install [git](https://wiki.archlinux.org/index.php/Git) , [wget](https://wiki.archlinux.org/index.php/Wget) , [base-devel](https://archlinux.org/groups/x86_64/base-devel/) , [neovim](https://wiki.archlinux.org/index.php/Neovim) and [libxft](https://archlinux.org/packages/extra/x86_64/libxft/) :

    ```zsh
    sudo pacman -Sy wget git base-devel neovim libxft
    ```
    <!---//TODO add links--->
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

1. OPTIONAL(changing colors, opacity and other preferences:
    1. Open st config...

        ```zsh
        sudo vim ~/.suckless/my-st-build/config.def.h
        ```

        ...and modify settings as you want
        <!--//TODO change with nvim-->
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
    git -C ~/.suckless clone https://git.suckless.org/dmenu && cd ~/.suckless/dmenu
    ```

1. ...and install it :

    ```zsh
    sudo make && sudo make clean install 
    ```

## DWM INSTALLATION

1. Install [xwallpaper](https://archlinux.org/packages/community/x86_64/xwallpaper/), [firefox](https://wiki.archlinux.org/index.php/Firefox) , [xcompmgr](https://wiki.archlinux.org/index.php/Xcompmgr) , [xorg-server](https://wiki.archlinux.org/index.php/xorg) and [xorg-xinit](https://wiki.archlinux.org/index.php/xorg) :

    ```zsh
    sudo pacman -Sy xwallpaper firefox xcompmgr xorg-server xorg-xinit
    ```

1. Set the wallpaper:

    ```zsh
    mkdir ~/Wallpapers && wget -O ~/Wallpapers/bg1.jpg https://wallpapercave.com/download/aesthetic-desktop-1366x768-wallpapers-wp4789545?nocache=1
    ```

1. Download [dwm](https://dwm.suckless.org/)...

    ```zsh
    git -C ~/.suckless clone https://github.com/Jacopown/my-dwm-build.git && cd ~/.suckless/my-dwm-build
    ```

1. ...and install it:

    ```zsh
    sudo make && sudo make clean install
    ```

1. Set xorg to start at login :

    ```zsh
    sudo echo startx > ~/.bash_profile
    ```

1. Logout and re-login or reboot for modifies to take place
1. OPTIONAL(changing colors, keybinds and other preferences)
    1. Open dwm configs...

        ```zsh
        sudo vim ~/.suckless/my-dwm-build/config.def.h
        ```

        ...and modify settings as you want
        <!--//TODO change with nvim-->
    1. Enter dwm directory...

        ```zsh
        cd ~/.suckless/my-dwm-build
        ```

    1. ...make it clean...

        ```zsh
        sudo make clean && rm -f config.h
        ```

    1. ...and install it again:

        ```zsh
        sudo make && sudo make clean install
        ```

## ZSH AND OH MY ZSH INSTALL]

1. Install [zsh](https://wiki.archlinux.org/index.php/Zsh) and [zsh-completions](https://archlinux.org/packages/community/any/zsh-completions/) :

    ```zsh
    sudo pacman -Sy zsh zsh-completions
    ```

1. Execute zsh:

    ```zsh
    zsh
    ```

    This should autostart the configuration program, if not:

    ```zsh
    zsh /usr/share/zsh/functions/Newuser/zsh-newuser-install -f
    ```

    Feel free to configure it as you prefere
1. Check zsh path (in my case /usr/bin/zsh):

    ```zsh
    chsh -l
    ```

1. Set zsh as your default terminal:

    ```zsh
    chsh -s /usr/bin/zsh
    ```

1. Close and re-open terminal
<!---//FIXME check if needed --->
1. Install [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh) :

    ```zsh
    sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    ```

1. Close and re-open terminal
<!---//FIXME check if needed--->
1. Install plugins (fell to add yours)

    ```zsh
    git -C ~/.oh-my-zsh/custom/plugins clone https://github.com/zsh-users/zsh-syntax-highlighting.git && git -C ~/.oh-my-zsh/custom/plugins clone https://github.com/zsh-users/zsh-autosuggestions
    ```

1. Make font's folder for [powerlevel10k](https://github.com/romkatv/powerlevel10k) theme:

    ```zsh
    sudo mkdir -p /usr/local/share/fonts/ttf/MesloNerdFontPatched
    ```

1. Install fonts:

    ```zsh
    wget -P /usr/local/share/fonts/ttf/MesloNerdFontPatched https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf
    ```

    ```zsh
    wget -P /usr/local/share/fonts/ttf/MesloNerdFontPatched https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf
    ```

    ```zsh
    wget -P /usr/local/share/fonts/ttf/MesloNerdFontPatched https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf
    ```

    ```zsh
    wget -P /usr/local/share/fonts/ttf/MesloNerdFontPatched https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf
    ```

    ```zsh
    fc-cache
    ```

1. Install zsh theme:

    ```zsh
    git -C ~/.oh-my-zsh/custom/themes clone https://github.com/romkatv/powerlevel10k.git
    ```

1. Download my .zshrc:

    ```zsh
    rm -rf ~/.zshrc && wget -P ~/ https://raw.githubusercontent.com/Jacopown/jacopown-first-dwm-rice/master/.zshrc && source ~/.zshrc
    ```

1. If needed close and re-open terminal
    <!---//FIXME check if needed--->

1. The config program should start automatically, if not run:

    ```zsh
    p10k configure
    ```
    <!---//TODO add step-by-step guide for my theme setup--->

## YAY INSTALLATION (optional but highly recommended)

1. Install yay

    ```zsh
    mkdir ~/temp && git -C ~/temp clone https://aur.archlinux.org/yay.git && cd ~/temp/yay && makepkg -si && rm -fr ~/yay
    ```

1. Reboot
    <!---//FIXME check if needed--->

## DROPBOX SYNC FOLDER SETUP (optional, yay installation needed)

1. install [dropbox](https://wiki.archlinux.org/index.php/dropbox) and [dropbox-cli](https://aur.archlinux.org/packages/dropbox-cli/) :

    ```zsh
    yay -S dropbox dropbox-cli
    ```

1. Enable dropbox start at login, uncomment dropbox line:

    ```zsh
    sudo vim ~/.xinitrc
    ```

1. Start dropbox and check his status:

    ```zsh
    dropbox && dropbox-cli status
    ```

1. Some settings:

    ```zsh
    dropbox-cli autostart && dropbox-cli throttle unlimited unlimited
    ```

1. Check files sync status:

    ```zsh
    dropbox-cli ls
    ```

1. Choose files to exclude from syncing:

    ```zsh
    dropobox-cli exclude <file to be excluded>
    ```

1. Reboot

## VSCODE INSTALLATION (optional)

Work in progress...not working properly

## MY ADDITIONAL PACKAGES

|PACKAGE NAME|DESCRIPTION|
|    :-:     |    :-:    |
|[dunst](https://wiki.archlinux.org/index.php/Dunst)|is a suckless notification system|
|[libnotify](https://wiki.archlinux.org/index.php/Desktop_notifications)|allows desktop notifications|
|[flameshot](https://wiki.archlinux.org/index.php/Flameshot)|used to take screenshots|
|[mpv](https://wiki.archlinux.org/index.php/Mpv)|minimalist video player|
|[neofetch](https://github.com/dylanaraps/neofetch)|used to display some system informations|
|[neovim](https://wiki.archlinux.org/index.php/Neovim)|better version of vim|
