#!/bin/sh
start_time=$(date +%s)
output=$("$1")
end_time=$(date +%s)
duration=$((end_time - start_time))

if [ "$duration" -ge 5 ]; then
    echo "✅ PASS"
else
    echo "❌ FAIL: El script terminó demasiado rápido (duración: ${duration}s)"
fi
