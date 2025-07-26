#!/bin/bash
output=$("$1" 7 3)

if echo "$output" | grep -q "7 es mayor"; then
    echo "✅ PASS"
else
    echo "❌ FAIL: Se esperaba comparación correcta"
fi
