#!/bin/sh
output=$("$1")
expected=$(date +%Y-%m-%d)
if [ "$output" = "$expected" ]; then
    echo "✅ PASS"
else
    echo "❌ FAIL: Se esperaba '$expected', pero se obtuvo '$output'"
fi
