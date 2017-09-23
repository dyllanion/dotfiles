# Reload the Xresources
xrdb -load ~/.Xresources

# Ensure you're not in CAPS mode, and then
# remap Caps Lock to escape.
xmodmap -e 'clear Lock'
xmodmap -e 'keycode 0x42=Escape'

# Start i3
exec i3
