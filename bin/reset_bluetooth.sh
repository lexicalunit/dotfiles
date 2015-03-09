#!/bin/bash

# Resets bluetooth on OS X.

if echo "$*" | egrep -q -- "--help|-h" || [[ "$1" != "--ready" ]]; then
    echo "usage: $(basename "$0") [-h|--help|--ready]"
    echo "Resets bluetooth on OS X"
    exit 1
fi

source "$HOME/.shell_control" || echo "$(tput bold)error: ~/.shell_control not installed!$(tput sgr0)" >&2

if [[ "$0" != "--ready" ]]; then
    show "Preform the following steps to reset bluetooth on this machine..."
    show "  1. Turn off all bluetooth devices you intend to connect to this machine."
    show "  2. Re-run this script with command line option --ready."
    show "  3. Turn off this machine."
    show "  4. Unplug power and all accessories this machine."
    show "  5. Turn this machine back on by holding power button for $(tput bold)at least 5 seconds.$(tput sgr0)"
    show "  6. Log back in, $(tput bold)still do not re-plug in power or accessories.$(tput sgr0)"
    show "  7. Turn on bluetooth devices."
    show "  8. If devices connect properly, then plug back in power and accessories."
    exit 0
fi

# disable
run "sudo defaults write /Library/Preferences/com.apple.Bluetooth.plist ControllerPowerState 0"
run "sudo launchctl unload /System/Library/LaunchDaemons/com.apple.blued.plist"
run "sudo rm /Library/Preferences/com.apple.Bluetooth.plist"
run "killall -u '$(whoami)' cfprefsd"
run "sudo nvram -c"
run "sudo kextunload /System/Library/Extensions/AppleBluetoothMultitouch.kext"
run "sudo kextunload -b com.apple.iokit.BroadcomBluetoothHostControllerUSBTransport"
fart 10

# re-enable
run "sudo kextload -b com.apple.iokit.BroadcomBluetoothHostControllerUSBTransport"
run "sudo kextload /System/Library/Extensions/AppleBluetoothMultitouch.kext"
run "sudo defaults write /Library/Preferences/com.apple.Bluetooth.plist ControllerPowerState 1"
run "sudo launchctl load /System/Library/LaunchDaemons/com.apple.blued.plist"
fart 10

# status
run "nvram -p"
run "ps -efw | egrep 'blued| *UID' | grep -v grep"
run "kextstat | egrep 'AppleBluetoothMultitouch|BroadcomBluetoothHostControllerUSBTransport'"
