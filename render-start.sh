#!/usr/bin/env bash
set -e

# 確保目錄存在
mkdir -p /tmp/.openclaw/workspace

# 使用 node 直接啟動 gateway 並傳遞必要的參數
# --allow-unconfigured 允許在沒有完整配置的情況下啟動
# --bind lan 允許綁定到非回環地址（Render 需要）
node dist/index.js gateway --port $PORT --bind lan --allow-unconfigured --verbose
