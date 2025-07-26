#!/bin/sh
output=$("$1")
if echo "$output" | grep -Eiq "vm|virtual|hardware|baremetal"; then
    echo "✅ PASS"
else
    echo "❌ FAIL: La salida debe indicar si es una máquina virtual o física. Obtuviste: '$output'"
fi
