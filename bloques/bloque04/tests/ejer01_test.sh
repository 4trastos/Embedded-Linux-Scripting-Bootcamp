#!/bin/bash
output=$("$1" uno dos tres)
expected="Número de argumentos: 3"

if [ "$output" = "$expected" ]; then
    echo "✅ PASS"
else
    echo "❌ FAIL: Se esperaba '$expected', pero se obtuvo '$output'"
fi
