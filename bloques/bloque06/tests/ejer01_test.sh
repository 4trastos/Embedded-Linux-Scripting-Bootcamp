#!/bin/sh
output=$(echo "Ana" | "$1")
if echo "$output" | grep -q "Hola, Ana!"; then
    echo "✅ PASS"
else
    echo "❌ FAIL: Esperado saludo a Ana, obtuviste: $output"
fi
