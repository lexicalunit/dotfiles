#!/bin/bash -e

# Installs a launchctl agent to keep zoomwatcher running in the background.

AGENT="$HOME/Library/LaunchAgents/com.lexicalunit.zoomwatcher.plist"

cat >"$AGENT" <<EOF
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
  <key>Label</key>
  <string>com.lexicalunit.zoomwatcher</string>

  <key>UserName</key>
  <string>$USER</string>

  <key>ProgramArguments</key>
  <array>
    <string>$HOME/bin/zoomwatcher</string>
  </array>

  <key>Nice</key>
  <integer>1</integer>

  <key>KeepAlive</key>
  <true/>

  <key>RunAtLoad</key>
  <true/>

  <key>StandardErrorPath</key>
  <string>/tmp/zoomwatcher.err</string>

  <key>StandardOutPath</key>
  <string>/tmp/zoomwatcher.out</string>
</dict>
</plist>
EOF

rm -f /tmp/zoomwatcher.err
rm -f /tmp/zoomwatcher.out
launchctl unload "$AGENT" 2>/dev/null || true
launchctl load "$AGENT"
