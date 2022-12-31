#!/usr/bin/env python3
# symlink this to /usr/local/bin or something
import os

def run_menu():
  keys = (
    "Log Out",
    "Suspend",
    "Reboot",
    "Shutdown",
  )

  actions = (
    "swaymsg exit",
    "systemctl suspend",
    "systemctl reboot",
    "systemctl poweroff"
  )

  options = "\n".join(keys)
  choice = os.popen("echo -e '" + options + "' | fuzzel -d -p 'power:'").readline().strip()
  if choice in keys:
    os.popen(actions[keys.index(choice)])

run_menu()
