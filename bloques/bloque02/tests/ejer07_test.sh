#!/bin/bash
output=$("$1" | grep -c '=')
if [ "$output" -gt 0 ]; then
    echo "✅ PASS"
else
    echo "❌ FAIL: No se detectaron variables de entorno."
fi
