#kills
pkill dwm_bar.sh

#dwmbar
~/.dwm/dwm-bar/dwm_bar.sh &

# default screen
~/.dwm/screenlayout/laptop-screen.sh &

# barrier
barriers --no-daemon --no-tray --name "void" --disable-crypto --disable-client-cert-checking -c ~/.config/barrier/barrier.conf &

# Notifications
pkill dunst &
/usr/bin/dunst &

# Polkit
/usr/libexec/polkit-gnome-authentication-agent-1 &

# Picom
pkill picom &
sleep 1
picom &

# Wallpaper
nitrogen --restore &

# betterlockscreen configure script
~/.dwm/script/lockscreen-wallpaper.sh &

#pulse
pulseaudio --daemonize &

