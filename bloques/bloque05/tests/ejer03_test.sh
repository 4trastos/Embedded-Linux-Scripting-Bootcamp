#!/bin/bash
output=$("$1")
expected=$(cut -d ':' -f1 /etc/passwd)
if [ "$output" = "$expected" ]; then
    echo "✅ PASS"
else
    echo "❌ FAIL: Los usuarios no coinciden con lo esperado"
fi
