#!/bin/sh
input="hola mundo"
output=$("$1" "$input")
expected="HOLA MUNDO"
if [ "$output" = "$expected" ]; then
    echo "✅ PASS"
else
    echo "❌ FAIL: Se esperaba '$expected', pero se obtuvo '$output'"
fi
