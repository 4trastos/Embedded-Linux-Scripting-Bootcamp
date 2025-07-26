#!/bin/bash
output=$("$1")
expected=$(tac /etc/passwd 2>/dev/null || tail -r /etc/passwd)
if [ "$output" = "$expected" ]; then
    echo "✅ PASS"
else
    echo "❌ FAIL: Las líneas no están en orden inverso correctamente"
fi
