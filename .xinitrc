# [Makes keyring work for vscode] 
#source /etc/X11/xinit/xinitrc.d/50-systemd-user.sh #(optional for vscode)

# [Start xcommgr for st trasparency]
exec xcompmgr -n &

# [Set background]
exec xwallpaper --maximize ~/Wallpapers/bg1.jpg & #(change this for different wallpaper path)

# [Start dropbox] 
#exec dropbox & #(optional for dropbox)

# [Start dwm]
exec dwm  

