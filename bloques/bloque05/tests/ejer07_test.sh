#!/bin/bash
echo "linux embedded" > input.txt
output=$("$1")
expected="LINUX EMBEDDED"
if [ "$output" = "$expected" ]; then
    echo "✅ PASS"
else
    echo "❌ FAIL: Se esperaba '$expected', obtuviste '$output'"
fi
