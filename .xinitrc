# [Makes keyring work for vscode] 
source /etc/X11/xinit/xinitrc.d/50-systemd-user.sh #(remove the first "#" if setting up vscode)

# [Start picom compositor]
exec picom &

#exec xrandr --output DVI-D-0 --rotate left &

exec --no-startup-id dunst &

# [Set background]
exec xwallpaper --maximize ~/Wallpapers/bg1.jpg & #(change this for different wallpaper path)

# [Start dropbox] 
exec dropbox & #(remove the first "#" if setting up dropbox)

# [Terminal color scheme]
exec wal -R &

# [Start dwm]
exec dwm  

