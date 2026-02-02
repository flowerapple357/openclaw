#!/usr/bin/env bash
set -e

# 確保目錄存在
mkdir -p /tmp/.openclaw/workspace

# 啟動一個簡單的健康檢查伺服器在 8081 連接埠
# Render 的健康檢查會指向這裡
node health-check.js &

echo "Starting OpenClaw Gateway on port $PORT..."
# 使用 node 直接啟動 gateway
# --allow-unconfigured 允許在沒有完整配置的情況下啟動
# --bind lan 允許綁定到所有網路介面（Render 需要）
node dist/index.js gateway --port $PORT --bind lan --allow-unconfigured --verbose
