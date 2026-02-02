#!/usr/bin/env bash
set -e

# 確保目錄存在
mkdir -p /tmp/.openclaw/workspace

echo "Starting OpenClaw Gateway on port $PORT..."
# 直接啟動主服務，Render 會偵測這個 $PORT (10000)
node dist/index.js gateway --port $PORT --bind lan --allow-unconfigured --verbose
