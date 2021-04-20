## ARCH INSTALLATION
WORK IN PROGRESS...
<!--//TODO add installation process-->

## ST AND DWM INSTALLATION

1. Open terminal and run:
    ```zsh
    sudo pacman -Sy firefox xcompmgr xwallpaper wget git
    ```
    This will install firefox, a compositor for trasparency fetures, a simple tool for wallpaper changing, wget and git
<!--//TODO optionaly change it with picom-->
2. Download .xinit file:

    ```zsh
    wget -P ~/ https://raw.githubusercontent.com/Jacopown/jacopown-first-dwm-rice/master/.xinitrc
    ```
3. Create a directory for st...

    ```zsh
    mkdir ~/.suckless/ && cd $_
    ```
4. ...than download it...

    ```zsh
    git clone https://github.com/Jacopown/my-st-build.git && cd /my-st-build
    ```
5. ...finally install it:

    ```zsh
    sudo make && sudo make clean install
    ```
6. ### OPTIONAL(changing colors, opacity and other preferences): 
   1. Open st config...

    ```zsh
    sudo vim ~/.suckless/my-st-build/config.def.h
    ```
    ...and modify settings as you want 
    <!--//TODO change with nvim-->
   2. Enter st directory...

    ```zsh
    cd ~/.suckless/my-st-build
    ```
   3. ...make it clean...

    ```zsh
    sudo make clean && rm -f config.h
    ```
   4. ...and install it again:

    ```zsh
    sudo make && sudo make clean install
      ```
7. Set the wallpaper:

    ```zsh
    mkdir ~/Wallpapers && wget -P ~/Wallpapers -O bg1.jpg https://wallpapercave.com/download/aesthetic-desktop-1366x768-wallpapers-wp4789545?nocache=1
    ```
8. Download DWM...

    ```zsh
    cd ~/.suckless && git clone https://github.com/Jacopown/my-dwm-build.git && cd /my-dwm-build
    ```
9. ...and install it:

    ```zsh
    sudo make && sudo make clean install
    ```
10. Logout and re-login or reboot for modifies to take place

11. ### OPTIONAL(changing colors, keybinds and other preferences):
    1. Open dwm configs...

        ```zsh
        sudo vim ~/.suckless/my-dwm-build/config.def.h
        ```
    ...and modify settings as you want
    <!--//TODO change with nvim-->
    2. Enter dwm directory...

        ```zsh
        cd ~/.suckless/my-dwm-build
        ```
    3. ...make it clean...

        ```zsh
        sudo make clean && rm -f config.h
        ```  
    4. ...and install it again:

        ```zsh
        sudo make && sudo make clean install
        ```

---[ZSH AND OH MY ZSH INSTALL]---
- run 'sudo pacman -Sy zsh zsh-completions' 
- run 'zsh' (now you should see zsh configuration program, feel free to set it as you prefere,i left it default for now)
- run 'zsh /usr/share/zsh/functions/Newuser/zsh-newuser-install -f' if configuration program doesn't start automatically
- run 'chsh -l' to see zsh path (in my case i see two zsh folder, i used '/usr/bin/zsh')
- run 'chsh -s /usr/bin/zsh'
- close and re-open terminal //FIXME check if needed
- run 'sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"'
- close and re-open terminal //FIXME check if needed
- run 'cd ~/.oh-my-zsh/custom/plugins'
- run 'git clone https://github.com/zsh-users/zsh-syntax-highlighting.git'
- run 'git clone https://github.com/zsh-users/zsh-autosuggestions'
- run 'sudo mkdir -p /usr/local/share/fonts/ttf/MesloNerdFontPatched'
- run 'wget -P /usr/local/share/fonts/ttf/MesloNerdFontPatched https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf'
- run 'wget -P /usr/local/share/fonts/ttf/MesloNerdFontPatched https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf'
- run 'wget -P /usr/local/share/fonts/ttf/MesloNerdFontPatched https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf'
- run 'wget -P /usr/local/share/fonts/ttf/MesloNerdFontPatched https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf'
- run 'fc-cache'
- run 'cd ~/.oh-my-zsh/custom/themes && git clone https://github.com/romkatv/powerlevel10k.git'
- run 'rm -rf ~/.zshrc && wget -P ~/ https://raw.githubusercontent.com/Jacopown/jacopown-first-dwm-rice/master/.zshrc && source ~/.zshrc' 
- if needed close and re-open terminal //FIXME check if needed
- run 'p10k configure' if configuration wizard doesn't start automatically
- //TODO add step-by-step guide for my theme setup 

---[YAY INSTALLATION]--- (optional but highly recommended)
- run 'sudo pacman -Sy base-devel' 
- run 'mkdir ~/temp && cd $_ && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si && cd .. && rm -fr yay'
- reboot //FIXME check if needed

---[DROPBOX SYNC FOLDER SETUP]--- (optional, yay installation needed)
- run 'yay -S dropbox dropbox-cli'
- run 'sudo vim ~/.xinitrc' and uncomment dropbox line
- run 'dropbox' to start the service and login for the first time
- run 'dropbox-cli status' to check dropbox status
- run 'dropbox-cli help' to show possible commands, below you'll see my personal setup, feel free to change it
- run 'dropbox-cli autostart' (if after reboot checking the status shows dropbox not running, launch this command again)
- run 'dropbox-cli throttle unlimited unlimited' (download and upload speed)
- run 'dropbox-cli ls' to see files and their sync status 
- run 'dropobox-cli exclude <file to be excluded>' to not sync some files 
- reboot

---[VSCODE INSTALLATION]--- (optional)
- sudo pacman -Sy libgnome-keyring polkit lxsession
- run 'yay -S visual-studio-code-bin'
- run 'sudo vim ~/.xinitrc' and uncomment vscode line
- //FIXME ability to save without sudo password
- reboot

