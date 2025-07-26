#!/bin/bash
output=$("$1")
expected=$(head -n 3 /etc/passwd)
if [ "$output" = "$expected" ]; then
    echo "✅ PASS"
else
    echo "❌ FAIL: Se esperaban las primeras 3 líneas de /etc/passwd"
fi
