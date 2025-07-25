#!/bin/sh
output=$(echo "Ada" | "$1")
[ "$output" = "Hello, Ada" ] && echo "✅ PASS" || echo "❌ FAIL: '$output'"
