#!/bin/bash
output=$("$1" 3)
if echo "$output" | grep -q "0"; then
    echo "✅ PASS"
else
    echo "❌ FAIL: No se encontró cuenta regresiva hasta 0"
fi
