#!/bin/bash
output=$(printf "1\n2\n3\nfin\n" | "$1")
if echo "$output" | grep -q "Suma total: 6"; then
    echo "✅ PASS"
else
    echo "❌ FAIL: Esperado 'Suma total: 6', obtuviste:\n$output"
fi
