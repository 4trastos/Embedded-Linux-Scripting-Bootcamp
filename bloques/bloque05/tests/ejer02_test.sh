#!/bin/sh
output=$("$1")
expected=$(wc -l < /etc/passwd)
if [ "$output" = "$expected" ]; then
    echo "✅ PASS"
else
    echo "❌ FAIL: Se esperaba '$expected', pero se obtuvo '$output'"
fi
