#!/bin/bash
output=$("$1")
if [ "$output" = "La suma es: 55" ]; then
    echo "✅ PASS"
else
    echo "❌ FAIL: Se esperaba 'La suma es: 55', pero se obtuvo '$output'"
fi
