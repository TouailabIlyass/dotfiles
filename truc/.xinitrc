# ~/.xinitrc
#
# Executed by startx (run your window manager from here)
if [ -d /etc/X11/xinit/xinitrc.d ]; then
for f in /etc/X11/xinit/xinitrc.d/*; do
[ -x "$f" ] && . "$f"
done
unset f
fi
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK
export GPG_AGENT_INFO
#. /etc/X11/Xsession
compton -b &

#/usr/bin/start-pulseaudio-x11 &

#exec gnome-session
exec i3
#exec cinnamon-session
#case $session in
#    i3|i3wm           ) exec i3;;
#    cn               ) exec cinnamon-session;;
#esac
# start Gnome keyring
#if [ -f /usr/bin/gnome-keyring-daemon ]; then
#  dbus-update-activation-environment --systemd DISPLAY
#  eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
#  export SSH_AUTH_SOCK
#fi