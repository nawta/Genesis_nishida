#!/bin/bash

# --- VNCサーバ関連をバックグラウンドで起動 ---
# Set VNC password
# mkdir -p ~/.vnc
# x11vnc -storepasswd "yourpassword" ~/.vnc/passwd

# Start Xvfb (virtual framebuffer) on display :0
Xvfb :0 -screen 0 1280x1024x24 &

# Export DISPLAY variable
export DISPLAY=:0

# Start fluxbox (lightweight window manager)
fluxbox &

# Start x11vnc server
x11vnc -display :0 -forever -nopw &

# --- 最後にシェルを起動してターミナル操作可能にする ---
tail -f /dev/null