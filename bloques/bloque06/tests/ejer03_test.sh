#!/bin/bash
output=$(echo "" | "$1")
if echo "$output" | grep -q "Entrada vacía"; then
    echo "✅ PASS"
else
    echo "❌ FAIL: Esperado 'Entrada vacía', obtuviste: $output"
fi
