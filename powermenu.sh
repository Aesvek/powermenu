#!/bin/bash
# Requires: dmenu, x11(wayland have issues)
choice=$(printf "Shutdown\nReboot\nSuspend\nLogout\n" | dmenu -i -p "Power Menu:")

case "$choice" in
  Shutdown) systemctl poweroff ;;
  Reboot) systemctl reboot ;;
  Suspend) systemctl suspend ;;
  Logout) i3-msg exit ;;
  *) exit 0 ;;
esac

