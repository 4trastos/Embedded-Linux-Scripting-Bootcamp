#!/bin/sh
output=$("$1" 2>/dev/null)
if echo "$output" | grep -Eq "^\w+:"; then
    echo "✅ PASS"
else
    echo "❌ FAIL: No se detectaron comandos por usuario"
fi
