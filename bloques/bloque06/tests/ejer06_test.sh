#!/bin/bash
output=$("$1")
if echo "$output" | grep -q "PID"; then
    echo "✅ PASS"
else
    echo "❌ FAIL: No se detectaron procesos listados"
fi
