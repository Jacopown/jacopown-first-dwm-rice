---[ARCH INSTALLATION]---
- TO BE CONTINUED

---[ST AND DWM INSTALLATION]---
- run 'sudo pacman -Sy firefox xcompmgr xwallpaper git' //TODO optionaly change it with picom
- run 'cd && git clone' /TODO add repository link for .xinitrc
- run 'sudo vim ~/xinitrc' //TODO change with nvim
- comment optional parts if not needed, save and exit
- run 'sudo mkdir <directory-name>' to make a directory for st files
- enter in the above created directory 
- run 'git clone https://github.com/Jacopown/my-st-build.git && cd /my-st-build'
- run 'sudo make && sudo make clean install'
OPTIONAL(changing colors, opacity and other preferences):
|- enter st files directory 
|- run 'sudo vim config.def.h'
|- modify settings as you want, save ad exit
|- run 'sudo make clean && rm -f config.h'
|- run 'sudo make && sudo make clean install'
|--------------------------------------------
- download a wallpaper
- change wallpaper directory in .xinitrc file to the directory where you downloaded it, save and exit 
- run 'sudo mkdir <directory-name>' to make a directory for dwm files
- enter in the above created directory 
- run 'git clone https://github.com/Jacopown/my-dwm-build.git && cd /my-dwm-build'
- run 'sudo make && sudo make clean install' 
- reboot
OPTIONAL(changing colors, keybinds and other preferences):
|- enter dwm files directory 
|- run 'sudo vim config.def.h'
|- modify settings as you want, save ad exit
|- run 'sudo make clean && rm -f config.h'
|- run 'sudo make && sudo make clean install'
|- reboot (or logout and re-login)
|--------------------------------------------

---[ZSH AND OH MY ZSH INSTALL]---
- run 'sudo pacman -Sy zsh zsh-completions wget'
- run 'zsh' (now you should see zsh configuration program, feel free to set it as you prefere,i left it default for now)
- run 'zsh /usr/share/zsh/functions/Newuser/zsh-newuser-install -f' if config. program not showing
- run 'chsh -l' to see zsh path (in my case i see two zsh folder, i used '/usr/bin/zsh')
- run 'chsh -s <full-path-to-shell>'
- close and re-open terminal
- run 'sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"'
- close and re-open terminal
- run 'cd ~/.oh-my-zsh/custom/plugins'
- run 'git clone https://github.com/zsh-users/zsh-syntax-highlighting.git'
- run 'git clone https://github.com/zsh-users/zsh-autosuggestions'
- open this links 'https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf'
- open this links 'https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf'
- open this links 'https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf'
- open this links 'https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf'
- save those files 
- run 'sudo mkdir -p /usr/local/share/fonts/ttf/meslonerdfontpatched'
- enter the directory where you downloaded the above four files
- run 'mv *.ttf /usr/local/share/fonts/ttf/meslonerdfontpatched && fc-cache' (being sure that only four files .ttf are in that directory, we have downloaded them before)
- run 'cd ~/.oh-my-zsh/custom/themes && git clone https://github.com/romkatv/powerlevel10k.git && cd'
- run 'rm -rf .zshrc && git clone && source ~/.zshrc' //TODO add .zshrc file repo
- if needed close and re-open terminal 
- run 'p10k configure' if configuration wizard doesn't start automatically
- //TODO add step-by-step guide for my theme setup 

---[YAY INSTALLATION]--- (optional but highly recommended)
- run 'sudo pacman -Sy base-devel' 
- run 'mkdir ~/temp && cd ~/temp && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si && cd .. && rm -fr yay'
- reboot

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
- run 'sudo vim ~/.xinitrc' and uncomment vscode line
- //FIXME ability to save without sudo password
- reboot


